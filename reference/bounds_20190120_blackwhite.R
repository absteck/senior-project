## WL notes for 'black and white only' reanalysis:
## (major differences from bounds_20190120.R)
##   - redefined X.base by dropping asian/hispanic/other
##   - we only run base model, not full specification
##   - "hispanic" ates/atest no longer computed (all dropped)
##   - no comparison to fryer models
##   - modeling code is entirely unchanged

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
library(Cairo)

## parallel
library(foreach)
library(doMC)
registerDoMC(cores = 8)


red <- '#A31F34'
blue <- '#325585'



###############
## load data ##
###############

setwd("/Users/abbysteckel/Desktop/S&DS_491/KLM Replication Materials/")
load('sqf_fryer_2003_2013.Rdata')
d <- d2; rm(d2)

## drop all races except black & white
d <- d[d$race %in% c('white', 'black'),]

## fryer (nd), empirical analysis of racial differences in police use of force
## figure 1 caption (use of force types)
##   0: when the police report using no force in a stop and frisk interaction
##   1: using at least hands
##   2: at least pushing a civilian to a wall
##   3: at least using handcuffs
##   4: at least drawing a weapon on a civilian
##   5: at least pushing a civilian to the ground
##   6: at least pointing a weapon at a civilian
##   7: at least using a pepper spray or a baton on a civilian
force.levels <- c(
  'At least use of hands',
  'At least push to wall',
  'At least use of handcuffs',
  'At least draw weapon',
  'At least push to ground',
  'At least point weapon',
  'Use baton or pepper spray'
)

## set white as base level
races.abbr <- c('white', 'black')
races <- c('white', 'black')
d$race <- factor(d$race2,
                 levels = races.abbr,
                 labels = races
)

d$age2sq <- d$age2^2
d$pct <- as.factor(d$pct)
d$force.binary <- d$force2

outcomes <- c('force', 'force.binary')
predictors <- c('race', 'gender', 'age2', 'age2sq', 'daytime', 'inout2',
                'ac_incid', 'ac_time', 'offunif2', 'typeofid2', 'othpers2',
                'cs_objcs', 'cs_descr', 'cs_casng', 'cs_lkout', 'cs_cloth',
                'cs_drgtr', 'cs_furtv', 'cs_vcrim', 'cs_bulge', 'cs_other',
                'pct', 'year')

d <- na.omit(d[, c(outcomes, predictors)])



###############
## functions ##
###############

odds.to.mean <- function(x){ x / (x + 1) }

mean.to.odds <- function(x){ x / (1 - x) }

## simulate posterior of fitted values for data matrix X
##   using samples from coefficient posterior

logit.sims.predict <- function(X, beta.sims){
  as.matrix(1 / (1 + exp(-(X %*% beta.sims))))
}

logit.sims.predict.chunked <- function(X, beta.sims, chunk.size = 100){
  if (ncol(beta.sims) %% chunk.size != 0){
    stop('# simulated coefficient draws is not evenly divisible by chunk size')
  }
  out <- llply(
    seq(1, ncol(beta.sims), chunk.size),
    function(chunk.start){
      chunk.ind <- chunk.start + 0:(chunk.size - 1)
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
estfun.speedglm <- function(mod, y, X){
  mu.eta <- mod$family$mu.eta
  linkinv <- mod$family$linkinv
  variance <- mod$family$variance
  eta <- as.numeric(X %*% coefficients(mod))
  mu.eta.val <- mu.eta(eta)
  mu <- linkinv(eta)
  residuals <- (y - mu) / mu.eta.val
  weights <- mu.eta.val^2 / variance(mu)
  estfun <- residuals * weights * X
  return(estfun)
}

## adapted from sandwich::estfun
meatCL.speedglm <- function(mod, cluster, y,  X, type = 'HC0'){
  if (is.list(mod) && !is.null(mod$na.action))
    class(mod$na.action) <- "omit"
  ef <- estfun.speedglm(mod, y, X)
  k <- NCOL(ef)
  n <- NROW(ef)
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
  if (p > 1L) {
    cl <- lapply(1L:p, function(i) combn(1L:p, i, simplify = FALSE))
    cl <- unlist(cl, recursive = FALSE)
    sign <- sapply(cl, function(i) (-1L)^(length(i) + 1L))
    for (i in (p + 1L):length(cl)) {
      cluster <- cbind(cluster, Reduce(paste0, cluster[,
                                                       cl[[i]]]))
    }
  }
  else {
    cl <- list(1)
    sign <- 1
  }
  g <- sapply(1L:length(cl), function(i) {
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
estfun.speedglm <- function(mod, y, X){
  mu.eta <- mod$family$mu.eta
  linkinv <- mod$family$linkinv
  variance <- mod$family$variance
  eta <- as.numeric(X %*% coefficients(mod))
  mu.eta.val <- mu.eta(eta)
  mu <- linkinv(eta)
  residuals <- (y - mu) / mu.eta.val
  weights <- mu.eta.val^2 / variance(mu)
  estfun <- residuals * weights * X
  return(estfun)
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
    optim(
      unname(quantile(max.stars, alpha + (1-alpha)/2)), # init
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

## for use of force models
formula.base <- formula(~ race)



### model matrices for running models ###p

X.base <- sparse.model.matrix(formula.base, d)



### model matrices for ate ###

## set all encounters to a particular race
d.setDwhite <- d; d.setDwhite$race <- factor('white', levels = races)
d.setDblack <- d; d.setDblack$race <- factor('black', levels = races)

## set race to white for all encounters
## note that in base specification, all encounters belong to the same
##   covariate strata so we can do interpretion with just one obs
X.base.setDwhite <- sparse.model.matrix(formula.base,
                                        d.setDwhite[1, , drop = FALSE],
                                        drop.unused.levels = FALSE
                                        )

## set race to black for all encounters
X.base.setDblack <- sparse.model.matrix(formula.base,
                                        d.setDblack[1, , drop = FALSE],
                                        drop.unused.levels = FALSE
                                        )



### model matrices for att ###

## avg effect of black (vs white) in black encounters
Xblack.base.setDwhite <- X.base.setDwhite
Xblack.base.setDblack <- X.base.setDblack



### cleanup ###
rm(d.setDwhite, d.setDblack)



########################
## run correct models ##
########################

## predicted use of varying force against various racial groups, no covariates
if (!file.exists('mods_base_correct_blackwhite.rds')){
  mods.base.correct <- lapply(
    1:7,  # violence thresholds, e.g. 1 = 'at least use of hands'
    function(thresh){
      cat(rep('=', 80), '\nbase model, threshold = ', thresh,
          ' (', force.levels[thresh], ')\n\n', sep = '')
      mod <- speedglm.wfit(y = d$force >= thresh,
                           X = X.base,
                           family = binomial(link = 'logit'),
                           sparse = TRUE,
                           trace = TRUE
                           )
      vcovCL <- vcovCL.speedglm(mod,
                                d$force >= thresh,
                                X.base,
                                cluster = d$pct
                                )
      return(list(thresh = force.levels[thresh], mod = mod, vcovCL = vcovCL))
    })
  saveRDS(mods.base.correct, 'mods_base_correct_blackwhite.rds')
} else {
  mods.base.correct <- readRDS('mods_base_correct_blackwhite.rds')
}



####################################
## bounds and ci for ates / atest ##
####################################

ndraws <- 5000
alpha <- .95
chunk.size <- 100
results.fname <- sprintf(
  'bounds_results_n%s_alpha%s_blackwhite.rds',
  ndraws,
  alpha * 100
)

rhos <- seq(.01, .99, .01)
combos <- expand.grid(treat.race = 'black',
                      mod.type = 'base',
                      thresh = 1:7,
                      stringsAsFactors = FALSE
                      )

if (!file.exists(results.fname)){
  results <- ddply(
    combos,
    c('treat.race', 'mod.type', 'thresh'),
    function(combo){

      ### prep ###

      treat.race <- combo$treat.race
      mod.type <- combo$mod.type
      thresh <- combo$thresh
      cat(sprintf('starting %s %s %s\n', treat.race, mod.type, thresh))
      if (!mod.type %in% c('base', 'full')){
        stop('model specification not recognized')
      }
      if (!treat.race %in% c('black', 'hispanic')){
        stop('treatment race not recognized')
      }

      ### intermediate values needed for qoi ###

      ## simulated coefficients
      set.seed(02139)
      coef.stars <- t(mvrnorm(
        n = ndraws,
        mu = coef(get(sprintf('mods.%s.correct', mod.type))[[thresh]]$mod),
        Sigma = get(sprintf('mods.%s.correct', mod.type))[[thresh]]$vcovCL
      ))

      ### compute ates ###

      ## predicted probability of white civilian in encounter
      if (mod.type == 'full'){
        D0.prob <-
          1 / (1 + exp(-(as.numeric(X.full.race %*% coef(mod.race.full)))))
      } else {
        D0.prob <- mean(d$race == 'white')
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
            get(sprintf('X.%s.setD%s', mod.type, treat.race)),
            coef.stars[,chunk.ind]
          )
          pred.setD0.chunk <- logit.sims.predict(
            get(sprintf('X.%s.setDwhite', mod.type)),
            coef.stars[,chunk.ind]
          )
          ## for each encounter x coef draw, difference in predicted force
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
  results$n.minority <- ifelse(results$treat.race == 'black',
                               sum(d$race == 'black'),
                               sum(d$race == 'hispanic')
                               )
  saveRDS(results, results.fname)
} else {
  results <- readRDS(results.fname)
}

sum(d$race=="black") #2,464,420

summary(results$est) #max ATT estimate for the base model is 0.220
summary(results$max.cihi) #max ATE estimate for the base model is 0.3324 
