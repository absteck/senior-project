## data manipulation
library(plyr)
library(reshape2)

## output
library(ggplot2)
library(xtable)

##########
## prep ##
##########

red <- '#A31F34'
blue <- '#325585'

odds.to.mean <- function(x){ x / (x + 1) }
mean.to.odds <- function(x){ x / (1 - x) }

#packages for loading in compressed data 
library(R.utils)
library(tidyverse)
combine <- read.csv('/Users/abbysteckel/Desktop/S&DS_491/KLM_sentencing_analysis/combined.csv.gz')
combine <- na_if(combine, "")

#subset to just Black or white folks 
df <- combine[combine$RACE %in% c("black", "white"), ]
df$RACE <- ifelse(df$RACE == "black", 1, 0)

## set white as base level
races.abbr <- c('white', 'black')
races <- c('white', 'black')
df$race <- factor(df$RACE, labels = races)

#2006-2008 data 
df <- df[df$PRIM_OFFENSE %in% c("immigration"), ]

outcome <- c('SENTENCE')
predictors <- c('AGE', 'MALE', 'HSGED', 'SOMEPOSTHS', 'POSTHSDEGREE', 'HISPANIC', 'USCITIZEN', 'SWB', 'CRIMINAL', 'CATEGORY2', 'CATEGORY3', 'CATEGORY4', 'CATEGORY5', 'CATEGORY6', 'NOCOUNTS', 'POINTS', 'TRIAL', 'YR2007', 'YR2006', 'YR2005', 'YR2004', 'YR2003', 'YR2002', 'YR2001', 'YR2000', 'race') 

df <- na.omit(df[, c(outcome, predictors)])

#create sentence levels  
sentence.quartiles <- c(
  '37', 
  '21', 
  '10'
)

#add a categorical sentence levels variable to the df dataframe 
df <- df %>% mutate ( # https://dplyr.tidyverse.org/reference/mutate.html
  sentence.quartiles = case_when( # https://dplyr.tidyverse.org/reference/case_when.html 
    SENTENCE > 37  ~ 'above 37', 
    SENTENCE > 21  ~ 'above 21',
    SENTENCE > 10 ~ 'above 10'
  ))

thresholds <- c(37, 21, 10) 


##################
## load results ##
##################

## bounds results
ndraws <- 5000
alpha <- .95 #desired significance level 
#NOTE: make sure to use the correct results file!! 
results.fname <- sprintf('bounds_results_n%s_alpha%s_blackwhite_sentencing_full_imm.rds', 
                         ndraws,
                         alpha * 100
)
setwd("/Users/abbysteckel/Desktop/S&DS_491/KLM_sentencing_analysis/")
results <- readRDS(results.fname) 
#add column containing the number of black people in the dataset 
results$n.minority <- sum(df$race == 'black', na.rm = TRUE) 



####################################################################
## plausible values for proportion of racial stops                ##
## based on gelman fagan kiss (2007), analysis of nypd s&f policy ##
## and goel rao shroff(2016), precinct or prejudice               ##
####################################################################

## gfk table 1: racial differences in stop rates that cannot explained by
##   - crime type (violent / weapons / property / drug)
##   - racial group's criminality (as previous year's dcjs arrest rates)
##   - precincts
gfk17 <- read.csv('/Users/abbysteckel/Desktop/S&DS_491/KLM Replication Materials/GelmanFaganKissTable1.csv')
gfk17 <- dcast(melt(gfk17, variable.name = 'crime.type'), ... ~ parameter)

## gfk p820: convert to stops per prev year's arrest, by precinct & crime type
##   "rates of stops (compared with previous year’s arrests)
##    for each ethnic group, e^(µ+α_e)"
gfk17$whites.stops.per.arrest <- exp(gfk17$intercept + gfk17$whites)
gfk17$blacks.stops.per.arrest <- exp(gfk17$intercept + gfk17$blacks)

## gfk proportion of excess stops, by precinct & crime type
gfk17$blacks.stops.excess <-
  (gfk17$blacks.stops.per.arrest - gfk17$whites.stops.per.arrest) /
  gfk17$blacks.stops.per.arrest

## or simply do this:
all.equal(gfk17$blacks.stops.excess,
          1 - exp(gfk17$whites - gfk17$blacks),
          tolerance = 1e-6
)

## gfk p817: "each of the three [black population proportion] categories
##            represents roughly 1/3 of the precincts"
prop.weights <- c(
  '<10%' = 1/3,
  '10-40%' = 1/3,
  '>40%' = 1/3
)
gfk17$prop.weight <- prop.weights[gfk17$prop.black]

## gfk figure 2: suspected crime type as percentage of all stops
crime.type.weights <- c(
  violent = .25,
  weapons = .44,
  property = .2,
  drug = .11
)
gfk17$crime.type.weight <- crime.type.weights[gfk17$crime.type]

## gfk racial stop proportions, based on
##   (a) minority stops per each previous year's minority arrest
##   (b) white stops per each previous year's white arrest
##   racially motivated stops are a-b, proportion of minority stops is (a-b)/a
##   we take weighted average of (a-b)/a by precinct type & crime type
black.rs.gfk <- weighted.mean(
  x = gfk17$blacks.stops.excess,
  w = gfk17$prop.weight * gfk17$crime.type.weight
)

## grs racial stop proportions
black.rs.grs <- (3.8 - 2.5) / 3.8

## vertical lines based on prior work
annotations <- data.frame(treat.race = 'black',
                          rho = black.rs.gfk,
                          text = 'GFK (2007)')



#################
## prep labels ##
#################
sentence.quartiles
## labels for plots 
#thresh = 1 corresponds to sentence.quartiles = above 3rd quartiles 
results$thresh.label <- factor(
  sentence.quartiles[results$thresh],
  levels = sentence.quartiles,
  labels = gsub('\n', ' ', sentence.quartiles),
  ordered = TRUE
) #there are 200 of each threshold label: 100 rho values x 2 treatment effect estimators 

results$race.label <- factor(
  results$treat.race, #treat.race = black 
  levels = c('black'),
  labels = c('Estimated Bounds on Sentencing Disparity'),
  ordered = TRUE
)

results$mod.label <- factor(
  results$mod.type,
  levels = c('pretreat', 'full'),
  labels = c('pretreatment covars', 'all covars'),
  ordered = TRUE
)

annotations$race.label <- factor(
  annotations$treat.race,
  levels = c('black'),
  labels = c('Estimated Bounds on Sentencing Disparity'),
  ordered = TRUE
)


##########################################
## ATT_M=1 interpretation for main text ##
##########################################
results$rho <- round(results$rho, 2)

## naive atest, pretreatment specification
naive.black.pretreat <- results[
  results$mod.type == 'pretreat' &
    results$treat.race == 'black' &
    results$rho == 0 &
    results$qoi == 'atest',
]
## bias-corrected atest, pretreatment specification
biascorrect.black.pretreat <- results[
  results$mod.type == 'pretreat' &
    results$treat.race == 'black' &
    results$rho == round(black.rs.gfk, 2) &
    results$qoi == 'atest',
]

## naive atest, full specification
naive.black.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'black' &
    results$rho == 0 &
    results$qoi == 'atest',
]
## bias-corrected atest, full specification
biascorrect.black.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'black' &
    results$rho == round(black.rs.gfk, 2) &
    results$qoi == 'atest',
]



naive.excess <- naive.black.pretreat$est * naive.black.pretreat$n.minority

biascorrect.excess <- biascorrect.black.pretreat$est * biascorrect.black.pretreat$n.minority

excess.pretreat <- cbind('naive' = naive.excess, 'bias-corrected' = biascorrect.excess)
excess.pretreat

naive.excess <- naive.black.full$est * naive.black.full$n.minority

biascorrect.excess <- biascorrect.black.full$est * biascorrect.black.full$n.minority
excess.full <- cbind('naive' = naive.excess, 'bias-corrected' = biascorrect.excess)
excess.full 


##########################################
## ATE_M=1 interpretation for main text ##
##########################################

## naive ates, pretreat specification
naive.black.pretreat <- results[
  results$mod.type == 'pretreat' &
    results$treat.race == 'black' &
    results$rho == 0 &
    results$qoi == 'ates',
]
## bias-corrected ates, pretreat specification
bounds.black.pretreat <- results[
  results$mod.type == 'pretreat' &
    results$treat.race == 'black' &
    results$rho == round(black.rs.gfk, 2) &
    results$qoi == 'ates',
]

## naive ates, full specification
naive.black.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'black' &
    results$rho == 0 &
    results$qoi == 'ates',
]
## bias-corrected ates, full specification
bounds.black.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'black' &
    results$rho == round(black.rs.gfk, 2) &
    results$qoi == 'ates',
]

ates.black.pretreat <-
  naive.black.pretreat[,c('treat.race', 'thresh.label')]
ates.black.pretreat$naive <- round(1000 * naive.black.pretreat$est, 1)
ates.black.pretreat$min <- round(1000 * bounds.black.pretreat$min, 1)
ates.black.pretreat$max <- round(1000 * bounds.black.pretreat$max, 1)
ates.black.pretreat

ates.black.full <-
  naive.black.full[,c('treat.race', 'thresh.label')]
ates.black.full$naive <- round(1000 * naive.black.full$est, 1)
ates.black.full$min <- round(1000 * bounds.black.full$min, 1)
ates.black.full$max <- round(1000 * bounds.black.full$max, 1)
ates.black.full


#NOTE: omitted lines 435-481 because they seem the same as lines 217-228 above 


#################
## plot bounds ##
#################

#create list of plots for each threshold 
p <- lapply(1:3, function(thresh, quartile) {
  ggplot(results[results$thresh == thresh &
                   results$qoi == 'ates',
  ],
  aes(x = rho)
  ) +
    geom_hline(yintercept = 0,
    ) +
    geom_ribbon(aes(ymin = min.cilo * nrow(df) / 1000,
                    ymax = max.cihi * nrow(df) / 1000
    ),
    fill = paste0(red, '80')
    ) +
    geom_ribbon(aes(ymin = min * nrow(df) / 1000,
                    ymax = max * nrow(df) / 1000,
                    fill = 'TE_S'
    )
    ) +
    geom_line(aes(y = est * n.minority / 1000,
                  linetype = 'TE_ST',
    ),
    results[results$thresh == thresh &
              results$qoi == 'atest',
    ],
    color = 'black',
    size = 1
    ) +
    geom_point(aes(y = est * nrow(df) / 1000,
                   color = 'naive'
    ),
    data = results[results$thresh == thresh & results$rho == 0,],
    color = blue,
    size = 2
    ) +
    geom_errorbar(aes(ymin = est.cilo * nrow(df) / 1000,
                      ymax = est.cihi * nrow(df) / 1000,
                      color = 'naive'
    ),
    data = results[results$thresh == thresh & results$rho == 0,],
    width = 1,
    size = 1
    ) +
    geom_vline(aes(xintercept = rho),
               data = annotations,
               ## data = annotations[ifelse(rep(presentation, nrow(annotations)),
               ##                           annotations$race == 'black',
               ##                           TRUE
               ##                           ),],
               ## linetype = 'dashed',
               size = .25
    ) +
    geom_text(aes(label = text),
              data = annotations,
              y = 1300,
              size = 5,
              hjust = 1,
              vjust = -.5,
              angle = 90
    ) +
    theme_light(base_size = 24) +
    theme(legend.position = 'bottom',
          legend.key.size = unit(1, 'cm'),
          legend.spacing.x = unit(.1, 'cm'),
          panel.grid.minor = element_blank(),
          panel.grid.major = element_line(linetype = 'dashed')
    ) +
    guides(color = guide_legend(title = NULL, order = 1),
           linetype = guide_legend(title = NULL, order = 2),
           fill = guide_legend(title = NULL, order = 3)
    ) +
    scale_color_manual(
      name = 'x',
      values = c('naive' = blue,
                 'TE_S' = NA,
                 'TE_ST' = NA
      ),
      labels = c('naive' = expression('naïve ATE'['M=1'] %*% ' #{convicted}'),
                 'TE_S' = expression('ATE'['M=1'] %*% ' #{convicted}'),
                 'TE_ST' = expression('ATT'['M=1'] %*% ' #{convicted minorities}')
      )
    ) +
    scale_fill_manual(name = 'x',
                      values = c('naive' = NA,
                                 'TE_S' = red,
                                 'TE_ST' = NA
                      ),
                      labels = c('naive' = expression('naïve ATE'['M=1'] %*% ' #{convicted}'),
                                 'TE_S' = expression('ATE'['M=1'] %*% ' #{convicted}'),
                                 'TE_ST' = expression('ATT'['M=1'] %*% ' #{convicted minorities}')
                      )
    ) +
    scale_linetype_manual(
      name = 'x',
      values = c('naive' = NA,
                 'TE_S' = NA,
                 'TE_ST' = 'dashed'
      ),
      labels = c('naive' = expression('naïve ATE'['M=1'] %*% ' #{convicted}'),
                 'TE_S' = expression('ATE'['M=1'] %*% ' #{convicted}'),
                 'TE_ST' = expression('ATT'['M=1'] %*% ' #{convicted minorities}')
      )
    ) +
    ylab(sprintf('People subject to racially\ndiscriminatory sentence, %2s month threshold (thousands)\n', sentence.quartiles[thresh])) +
    xlab('\nProportion of racially discriminatory convictions') +
    xlim(0, 1) +
    facet_grid(mod.label ~ race.label) +
    theme(text = element_text(size = 12))
}
)

library(gridExtra)
#export all plots as a PDF
ggsave(
  filename = "plots_imm.pdf", 
  plot = marrangeGrob(p, nrow=1, ncol=1), 
  width = 15, height = 9
)
