
library(R.utils)
library(tidyverse)
combine <- read.csv('combined.csv.gz')
combine <- na_if(combine, "")
df <- combine[combine$RACE %in% c("black", "white"), ]
df$RACE <- ifelse(df$RACE == "black", 1, 0)

if(mean(df$SENTENCE[df$RACE==1], na.rm = TRUE) - mean(df$SENTENCE[df$RACE==0], na.rm = TRUE) != 42.41256){
  print("error in data import")
}

## data manipulation
library(reshape2)
library(plyr)
library(stringr)

## math
library(Matrix)
library(MASS)
library(speedglm)
library(sandwich)

## graphics
library(ggplot2)
#library(Cairo) throwing an error

## parallel
library(foreach)
library(doMC)
registerDoMC(cores = 8)

red <- '#A31F34'
blue <- '#325585'

#create sentence levels  
sentence.quartiles <- c(
  'above third quartile', 
  'above median', 
  'above first quartile'
)

## set white as base treatment level
races.abbr <- c('white', 'black')
races <- c('white', 'black')
df$race <- factor(df$RACE, labels = races)

outcome <- c('SENTENCE') 
predictors <- c('AGE', 'MALE', 'HSGED', 'SOMEPOSTHS', 'POSTHSDEGREE', 'HISPANIC', 'USCITIZEN', 'CRIMINAL', 'CATEGORY2', 'CATEGORY3', 'CATEGORY4', 'CATEGORY5', 'CATEGORY6', 'NOCOUNTS', 'POINTS', 'TRIAL','YR2001', 'YR2002', 'YR2003', 'YR2004', 'YR2005', 'YR2006', 'YR2007', 'YR2008', 'PRIM_OFFENSE', 'race') #26 predictors 

df <- na.omit(df[, c(outcome, predictors)])

if(setequal(quantile(df$SENTENCE), c(0, 15, 37, 72, 11520)) == FALSE){
  print("check quantiles")
}

#add a categorical sentence quartiles variable to the dataframe 
df <- df %>% mutate ( # https://dplyr.tidyverse.org/reference/mutate.html
  sentence.quartiles = case_when( # https://dplyr.tidyverse.org/reference/case_when.html 
    SENTENCE > 72  ~ 'above third quartile', 
    SENTENCE > 37  ~ 'above median',
    SENTENCE > 15 ~ 'above first quartile'
  ))

thresholds <- c(72, 37, 15) 

if(sum(is.na(df$sentence.quartiles)) != sum(df$SENTENCE <= 15)){
  print("error: more NAs than unclassified values")
}



###############
## functions ##
###############

odds.to.mean <- function(x){ x / (x + 1) }

mean.to.odds <- function(x){ x / (1 - x) }

## simulate posterior of fitted values for data matrix X
##   using samples from coefficient posterior

#beta.sims are logistic regression coefficents optimized through maximum likelihood estimation  
#I believe that this function is supposed to convert from the logit function, which is linear over the beta.sims, to the logistic function, whose output is the probability of receiving a sentence of a specified length 

#QUESTION: What's going on with this conversion from logit to logistic? Shouldn't it be exp(X %*% beta.sims) / (1 + exp(X %*% beta.sims))? 
logit.sims.predict <- function(X, beta.sims){
  as.matrix(1 / (1 + exp(-(X %*% beta.sims))))
} 

#QUESTION: Why the chunks? 
logit.sims.predict.chunked <- function(X, beta.sims, chunk.size = 100){
  if (ncol(beta.sims) %% chunk.size != 0){
    stop('# simulated coefficient draws is not evenly divisible by chunk size')
  }
  out <- llply( #applies the anonymous function to each element of the sequence
    seq(1, ncol(beta.sims), chunk.size),
    function(chunk.start){
      chunk.ind <- chunk.start + 0:(chunk.size - 1) #get indices of items in the chunk 
      #get predicted probabilities from model the simulated betas, transformed from logit 
      as.matrix(1 / (1 + exp(-(X %*% beta.sims[,chunk.ind])))) 
    })
  out <- do.call(cbind, out) 
  return(out) 
}

logit.sims.predictmean.chunked <- function(X, beta.sims, chunk.size = 100){
  if (ncol(beta.sims) %% chunk.size != 0){
    stop('# simulated coefficient draws is not evenly divisible by chunk size')
  }
  out <- llply(
    seq(1, ncol(beta.sims), chunk.size),
    function(chunk.start){
      chunk.ind <- chunk.start + 0:(chunk.size - 1)
      colMeans(as.matrix(1 / (1 + exp(-(X %*% beta.sims[,chunk.ind])))))
    })
  out <- unlist(out)
  return(out)
}

## adapted from sandwich::estfun
# https://www.rdocumentation.org/packages/sandwich/versions/3.0-1/topics/estfun 
estfun.speedglm <- function(mod, y, X){
  mu.eta <- mod$family$mu.eta 
  linkinv <- mod$family$linkinv #inverse link function of the glm
  variance <- mod$family$variance
  eta <- as.numeric(X %*% coefficients(mod)) 
  mu.eta.val <- mu.eta(eta)
  mu <- linkinv(eta)
  residuals <- (y - mu) / mu.eta.val
  weights <- mu.eta.val^2 / variance(mu)
  estfun <- residuals * weights * X #QUESTION: What's the meaning of this quantity? 
  return(estfun) 
}

## adapted from sandwich::estfun
#from sandwich documentation: "The meat of a clustered sandwich estimator is the cross product of the clusterwise summed estimating functions" (23)
#used for estimating the covariance matrix to get robust standard errors

meatCL.speedglm <- function(mod, cluster, y,  X, type = 'HC0'){
  if (is.list(mod) && !is.null(mod$na.action)) 
    class(mod$na.action) <- "omit"
  ef <- estfun.speedglm(mod, y, X)
  k <- NCOL(ef) #number of parameters in glm model 
  n <- NROW(ef) #number of observations
  rval <- matrix(0, nrow = k, ncol = k, dimnames = list(colnames(ef),
                                                        colnames(ef)))
  if (is.null(cluster))
    cluster <- attr(mod, "cluster")
  if (is.null(cluster))
    cluster <- 1L:n
  cluster <- as.data.frame(cluster)
  if (NROW(cluster) != n)
    stop("number of observations in 'cluster' and 'estfun()' do not match")
  p <- NCOL(cluster)
  if (p > 1L) { #if there are more than 1 columns 
    #get all possible subsets of  {1, 2, ..., p}. cl[,i] returns a vector containing the ith subset
    cl <- lapply(1L:p, function(i) combn(1L:p, i, simplify = FALSE)) 
    cl <- unlist(cl, recursive = FALSE)
    sign <- sapply(cl, function(i) (-1L)^(length(i) + 1L)) 
    for (i in (p + 1L):length(cl)) {
      cluster <- cbind(cluster, Reduce(paste0, cluster[, cl[[i]]]))
    }
  }
  else {
    cl <- list(1)
    sign <- 1
  }
  g <- sapply(1L:length(cl), function(i) { #sapply returns output of arg2(arg1) in a matrix 
    if (is.factor(cluster[[i]])) {
      length(levels(cluster[[i]]))
    }
    else {
      length(unique(cluster[[i]]))
    }
  })
  gmin <- min(g[1L:p])
  if (FALSE)
    g[] <- gmin
  type <- match.arg(type, c("HC", "HC0", "HC1"))
  if (type == "HC")
    type <- "HC0"
  for (i in 1L:length(cl)) {
    efi <- ef
    adj <- g[i]/(g[i] - 1L)
    efi <- if (g[i] < n)
      apply(efi, 2L, tapply, cluster[[i]], sum)
    else efi
    rval <- rval + sign[i] * adj * crossprod(efi)/n
  }
  if (type == "HC1")
    rval <- (n - 1L)/(n - k) * rval
  return(rval) 
}


## adapted from sandwich::estfun
vcovCL.speedglm <- function(mod, y, X, cluster = NULL,
                            sandwich = TRUE, fix = FALSE
){
  rval <- meatCL.speedglm(mod, cluster = cluster, y, X)
  if (sandwich){
    bread. <- sandwich:::bread(mod)
    meat. <- rval
    n <- length(y)
    rval <- 1/n * (bread. %*% meat. %*% bread.)
  }
  if (fix && any((eig <- eigen(rval, symmetric = TRUE))$values <
                 0)) {
    eig$values <- pmax(eig$values, 0)
    rval <- crossprod(sqrt(eig$values) * t(eig$vectors))
  }
  return(rval)
}

compute.bounds.ci.from.samples <- function(min.stars, max.stars, alpha){
  sol = tryCatch(
    {
      # https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/optim 
      optim( #first arg = vector of params over which to optimize fn
        unname(quantile(max.stars, alpha + (1-alpha)/2)), #upper end of the CI with sig level alpha 
        fn = function (cihi){
          x = min.stars
          x[max.stars > cihi] = min(x) 
          cilo = quantile(x, 1 - alpha)
          return(cihi - cilo)
        },
        lower = quantile(max.stars, alpha),
        upper = quantile(max.stars, alpha + (1-alpha)/2),
        method = 'L-BFGS-B'
      )
    },
    error = function(e){
      NULL
    })
  if (!is.null(sol)){
    return(c(
      min.cilo = sol$par - sol$value, 
      max.cihi = sol$par
    ))
  } else {
    warning('caught error in HPD computation, returning conservative CI')
    return(c(
      min.cilo = quantile(min.stars, (1-alpha)/2, na.rm=TRUE),
      max.cihi = quantile(max.stars, alpha + (1-alpha)/2, na.rm=TRUE)
    ))
  }
}


###########################
## create model matrices ##
###########################

### model formulas ###

formula.base <- formula(~ race)

formula.partial <- formula(
  ~ race + MALE + USCITIZEN + CRIMINAL
)

formula.partial.race <- formula(
  ~ MALE + USCITIZEN + CRIMINAL
)


### model matrices for running models ###
X.base <- sparse.model.matrix(formula.base, df) 

X.partial <- sparse.model.matrix(formula.partial, df)
X.partial.race <- sparse.model.matrix(formula.partial.race, df)

### model matrices for ate ###

## set all encounters to a particular race
d.setDwhite <- df; d.setDwhite$race <- factor('white', levels = races)
d.setDblack <- df; d.setDblack$race <- factor('black', levels = races)

## set race to white for all encounters
## note that in base specification, all encounters belong to the same
##   covariate strata so we can do interpretation with just one obs
# That is, the base specification has only one predictor (race), so all of the imputed treatment values are the same, and all the imputed control values are the same. This is why the model matrix only has 2 columns and 1 row.
X.base.setDwhite <- sparse.model.matrix(formula.base,
                                        d.setDwhite[1, , drop = FALSE],
                                        drop.unused.levels = FALSE
)

X.partial.setDwhite <- sparse.model.matrix(formula.partial, 
                                           d.setDwhite, 
                                           drop.unused.levels = FALSE)

## set race to black for all encounters
X.base.setDblack <- sparse.model.matrix(formula.base,
                                        d.setDblack[1, , drop = FALSE],
                                        drop.unused.levels = FALSE
)

X.partial.setDblack <- sparse.model.matrix(formula.partial, 
                                           d.setDblack, 
                                           drop.unused.levels = FALSE)

### model matrices for att ###

## avg effect of black (vs white) in black encounters
Xblack.base.setDwhite <- X.base.setDwhite
Xblack.base.setDblack <- X.base.setDblack

Xblack.partial.setDwhite <- X.partial.setDwhite[df$race == 'black',]
Xblack.partial.setDblack <- X.partial.setDblack[df$race == 'black',]

### cleanup ###
rm(d.setDwhite, d.setDblack)



########################
## run correct models ##
########################

## Base model 
## predicted use of varying force against various racial groups, no covariates
if (!file.exists('mods_base_correct_blackwhite_sentencing.rds')){
  mods.base.correct <- lapply(
    1:length(thresholds),  # sentence thresholds. 1 = 'above first quartile." 2 = 'above median.' 3 = 'above third quartile.' 
    function(thresh_index){
      cat(rep('=', 80), '\nbase model, threshold = ', thresh_index,
          ' (', sentence.quartiles[thresh_index], ')\n\n', sep = '')
      mod <- speedglm.wfit(y = df$SENTENCE > thresholds[thresh_index], #indicator of whether force exceeded the given threshold
                           X = X.base,
                           family = binomial(link = 'logit'),
                           sparse = TRUE,
                           trace = TRUE
      )
      vcovCL <- vcovCL.speedglm(mod,
                                df$SENTENCE > thresholds[thresh_index], 
                                X.base,
                                cluster = c(1:nrow(df)) #each observation is a cluster (ie no clustering)
      )
      std_err <- sqrt(diag(vcovCL)) 
      return(list(thresh = sentence.quartiles[thresh_index], mod = mod, vcovCL = vcovCL, std_err = std_err))
    })
  saveRDS(mods.base.correct, 'mods_base_correct_blackwhite_sentencing.rds')
} else {
  mods.base.correct <- readRDS('mods_base_correct_blackwhite_sentencing.rds')
}


## Partial Model 
if(!file.exists('mods_partial_correct_blackwhite_sentencing.rds')){
  mods.partial.correct <- lapply(
    1:length(thresholds),  
    function(thresh_index){
      cat(rep('=', 80), '\npartial model, threshold = ', thresh_index,
          ' (', sentence.quartiles[thresh_index], ')\n\n', sep = '')
      mod <- speedglm.wfit(y = df$SENTENCE > thresholds[thresh_index],
                           X = X.partial,
                           family = binomial(link = 'logit'),
                           sparse = TRUE,
                           trace = TRUE
      )
      vcovCL <- vcovCL.speedglm(mod,
                                df$SENTENCE > thresholds[thresh_index],
                                X.partial,
                                cluster = c(1:nrow(df))
      )
      std_err <- sqrt(diag(vcovCL)) 
      return(list(thresh = sentence.quartiles[thresh_index], mod = mod, vcovCL = vcovCL, std_err = std_err))
    })
  saveRDS(mods.partial.correct, 'mods_partial_correct_blackwhite_sentencing.rds')
} else {
  mods.partial.correct <- readRDS('mods_partial_correct_blackwhite_sentencing.rds')
}

## predicted race (white vs not white) of civilian in encounter, with covariates
mod.race.partial <- speedglm.wfit(y = df$race == 'white',
                                  X = X.partial.race,
                                  family = binomial(link = 'logit'),
                                  sparse = TRUE,
                                  trace = TRUE
)



####################################
## bounds and ci for ates / atest ##
####################################

ndraws <- 500
alpha <- .95
chunk.size <- 250
results.fname <- sprintf(
  'bounds_results_n%s_alpha%s_blackwhite_sentencing_partial.rds',
  ndraws,
  alpha * 100
) 

rhos <- c(.5, 0.99)

combos <- expand.grid(treat.race = 'black',
                      mod.type = c('base', 'partial'),
                      thresh = 1:length(thresholds),
                      stringsAsFactors = FALSE
)

if (!file.exists(results.fname)){
  results <- ddply( # https://www.rdocumentation.org/packages/plyr/versions/1.8.6/topics/ddply 
    combos, #data frame to be processed 
    c('treat.race', 'mod.type', 'thresh'), #variables to split dataframe by 
    function(combo){
      
      ### prep ###
      
      treat.race <- combo$treat.race
      mod.type <- combo$mod.type
      thresh <- combo$thresh #thresh 1:3 corresponds to index of sentence.quartiles 
      cat(sprintf('starting %s %s %s\n', treat.race, mod.type, thresh))
      if (!mod.type %in% c('base', 'partial')){
        stop('model specification not recognized')
      }
      if (!treat.race %in% c('black')){
        stop('treatment race not recognized')
      }
      
      ### intermediate values needed for qoi ### 
      
      ## simulated coefficients
      set.seed(02139)
      coef.stars <- t(mvrnorm( #mvrnorm() draws a random sample and fills a matrix by column
        n = ndraws, #n = 5000
        mu = coef(get(sprintf('mods.%s.correct', mod.type))[[thresh]]$mod), #coefficients beta0 and beta1 of the model with the given thresh 
        Sigma = get(sprintf('mods.%s.correct', mod.type))[[thresh]]$vcovCL #covariance matrix of the data, gives standard dev for normal draws 
      ))
      
      ### compute ates ###
      
      if (mod.type == 'partial'){
        D0.prob <-
          1 / (1 + exp(-(as.numeric(X.partial.race %*% coef(mod.race.partial))))) #probability of being white given values of other covariates
      } else {
        D0.prob <- mean(df$race == 'white') #probability of being white in the base model 
      }
      
      ates.chunks <- llply(
        seq(1, ndraws, chunk.size),
        function(chunk.start){
          cat(sprintf('computing bounds in %s %s %s (draws %s:%s)\n',
                      treat.race,
                      mod.type,
                      thresh,
                      chunk.start,
                      chunk.start + chunk.size - 1
          ))
          chunk.ind <- chunk.start + 0:(chunk.size - 1)
          ## for naive ate, set all encounters to a particular race, then
          ##   predict use of force in each encounter (row) by coef draw (col)
          pred.setD1.chunk <- logit.sims.predict(
            get(sprintf('X.%s.setD%s', mod.type, treat.race)), #X.base.setblack: data vectors where treatment is set to 1 
            coef.stars[,chunk.ind] #these are our betas 
          )
          pred.setD0.chunk <- logit.sims.predict(
            get(sprintf('X.%s.setDwhite', mod.type)),
            coef.stars[,chunk.ind]
          )
          ## for each encounter x coef draw, difference in probability of receiving sentence above the threshold 
          ##   when setting D=1 vs D=0
          ates.naive.chunk <- colMeans(pred.setD1.chunk - pred.setD0.chunk)
          ## ates bounds and atest at various rhos (rows) and coef samples (cols)
          ## note: this duplicates vector D0.prob over columns of pred.setD0
          ates.bounds.lo.chunk <- laply(rhos, function(rho){
            ates.naive.chunk + colMeans(rho * pred.setD0.chunk * (1 - D0.prob))
          })
          ates.bounds.hi.chunk <- ates.bounds.lo.chunk +
            laply(rhos, function(rho){
              colMeans(
                rho / (1 - rho) * D0.prob * (
                  pred.setD1.chunk -
                    pmax(1 + pred.setD1.chunk / rho - 1 / rho, 0)
                )
              )
            })
          ## output
          return(list(ates.naive = ates.naive.chunk,
                      ates.bounds.lo = ates.bounds.lo.chunk,
                      ates.bounds.hi = ates.bounds.hi.chunk
          )
          )
        })
      
      ates.naive <- unlist(lapply(ates.chunks, function(x) x$ates.naive))
      ates.bounds.lo <- do.call(
        cbind,
        lapply(ates.chunks, function(x) x$ates.bounds.lo)
      )
      ates.bounds.hi <- do.call(
        cbind,
        lapply(ates.chunks, function(x) x$ates.bounds.hi)
      )
      rm(ates.chunks)
      
      ### compute atest ###
      
      ## for naive atest (minority encounters with real race, vs set to white)
      ## we never need the encounter-wise values for atest, so just store
      ## mean values (over all minority encounters) for each coef draw
      predD1.setD1 <- logit.sims.predictmean.chunked(
        get(sprintf('X%s.%s.setD%s', treat.race, mod.type, treat.race)),
        coef.stars,
        chunk.size = 100
      )
      predD1.setD0 <- logit.sims.predictmean.chunked(
        get(sprintf('X%s.%s.setDwhite', treat.race, mod.type)),
        coef.stars,
        chunk.size = 100
      )
      
      ## for each coef draw, difference in mean predicted force
      ##   when setting D=1 vs D=0
      atest.naive <- predD1.setD1 - predD1.setD0
      
      atest <- laply(rhos, function(rho){
        atest.naive + rho * predD1.setD0
      })
      
      ### output ###
      
      ## ates
      ates.naive.est <- mean(ates.naive)
      ates.naive.ci <- unname(quantile(
        ates.naive,
        c((1 - alpha) / 2, (alpha + 1) / 2)
      ))
      ates.bounds.est <- cbind(min = rowMeans(ates.bounds.lo),
                               max = rowMeans(ates.bounds.hi)
      )
      ates.bounds.ci <- ldply(seq_along(rhos),
                              function(i){
                                compute.bounds.ci.from.samples(
                                  ates.bounds.lo[i,], 
                                  ates.bounds.hi[i,],
                                  alpha
                                )
                              })
      
      ## atest
      atest.naive.est <- mean(atest.naive)
      atest.naive.ci <- unname(quantile(
        atest.naive,
        c((1 - alpha) / 2, (alpha + 1) / 2)
      ))
      atest.est <- rowMeans(atest)
      atest.ci <- adply(atest,
                        1,
                        function(x){
                          out <- quantile(
                            x,
                            c((1 - alpha) / 2, (alpha + 1) / 2)
                          )
                          names(out) <- c('cilo', 'cihi')
                          return(out)
                        })
      
      cat(sprintf('finishing %s %s %s\n', treat.race, mod.type, thresh))
      
      return(rbind.fill(
        data.frame(qoi = 'ates',
                   rho = c(0, rhos),
                   est = c(ates.naive.est, rep(NA, length(rhos))),
                   est.cilo = c(ates.naive.ci[1], rep(NA, length(rhos))),
                   est.cihi = c(ates.naive.ci[2], rep(NA, length(rhos))),
                   min = c(NA, ates.bounds.est[, 'min']),
                   max = c(NA, ates.bounds.est[, 'max']),
                   min.cilo = c(NA, ates.bounds.ci[, 'min.cilo']), 
                   max.cihi = c(NA, ates.bounds.ci[, 'max.cihi'])
        ),
        data.frame(qoi = 'atest',
                   rho = c(0, rhos),
                   est = c(atest.naive.est, atest.est),
                   est.cilo = c(atest.naive.ci[1], atest.ci[,'cilo']),
                   est.cihi = c(atest.naive.ci[2], atest.ci[,'cihi'])
        )
      ))
      
    },
    .parallel = TRUE,
    .paropts =list(.export = c('mvrnorm', ls()[grep('^(X|mods)', ls())]))
  )
  results$rho <- round(results$rho, 2)  # fix minor floating point issue
  results$n.black <- sum(df$race == 'black')
  saveRDS(results, results.fname)
} else {
  results <- readRDS(results.fname)
}


