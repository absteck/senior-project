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

setwd("/Users/abbysteckel/Desktop/S&DS_491/KLM Replication Materials/")
load('sqf_fryer_2003_2013.Rdata')
d <- d2; rm(d2)

## drop all but black/white
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



##################
## load results ##
##################

## bounds results
ndraws <- 5000
alpha <- .95
results.fname <- sprintf('bounds_results_n%s_alpha%s_blackwhite.rds',
                         ndraws,
                         alpha * 100
                         )
results <- readRDS(results.fname)
results$n.minority <- ifelse(results$treat.race == 'black',
                             sum(d$race == 'black', na.rm = TRUE),
                             sum(d$race == 'hisp', na.rm = TRUE)
                             )



####################################################################
## plausible values for proportion of racial stops                ##
## based on gelman fagan kiss (2007), analysis of nypd s&f policy ##
## and goel rao shroff(2016), precinct or prejudice               ##
####################################################################

## gfk table 1: racial differences in stop rates that cannot explained by
##   - crime type (violent / weapons / property / drug)
##   - racial group's criminality (as previous year's dcjs arrest rates)
##   - precincts
gfk17 <- read.csv('data/GelmanFaganKissTable1.csv')
gfk17 <- dcast(melt(gfk17, variable.name = 'crime.type'), ... ~ parameter)

## gfk p820: convert to stops per prev year's arrest, by precinct & crime type
##   "rates of stops (compared with previous year’s arrests)
##    for each ethnic group, e^(µ+α_e)"
gfk17$whites.stops.per.arrest <- exp(gfk17$intercept + gfk17$whites)
gfk17$blacks.stops.per.arrest <- exp(gfk17$intercept + gfk17$blacks)
gfk17$hispanics.stops.per.arrest <- exp(gfk17$intercept + gfk17$hispanics)

## gfk proportion of excess stops, by precinct & crime type
gfk17$blacks.stops.excess <-
  (gfk17$blacks.stops.per.arrest - gfk17$whites.stops.per.arrest) /
  gfk17$blacks.stops.per.arrest
gfk17$hispanics.stops.excess <-
  (gfk17$hispanics.stops.per.arrest - gfk17$whites.stops.per.arrest) /
  gfk17$hispanics.stops.per.arrest

## or simply do this:
all.equal(gfk17$blacks.stops.excess,
          1 - exp(gfk17$whites - gfk17$blacks),
          tolerance = 1e-6
          )
all.equal(gfk17$hispanics.stops.excess,
          1 - exp(gfk17$whites - gfk17$hispanics),
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
hispanic.rs.gfk <- weighted.mean(
  x = gfk17$hispanics.stops.excess,
  w = gfk17$prop.weight * gfk17$crime.type.weight
)

## grs racial stop proportions
black.rs.grs <- (3.8 - 2.5) / 3.8
hispanic.rs.grs <- NA_real_ # unavailable

## vertical lines based on prior work
annotations <- data.frame(treat.race = c('black',
                                         'hispanic'## ,
                                         ## 'black'
                                         ),
                          rho = c(black.rs.gfk,
                                  hispanic.rs.gfk## ,
                                  ## black.rs.grs
                                  ),
                          text = c('GFK (2007)',
                                   'GFK (2007)'## ,
                                   ## 'GRS (2016)'
                                   )
                          )



#################
## prep labels ##
#################

## labels for plots
results$thresh.label <- factor(
  force.levels[results$thresh],
  levels = force.levels,
  labels = gsub('\n', ' ', force.levels),
  ordered = TRUE
)

results$thresh.label.short <-
  results$thresh.label
levels(results$thresh.label.short) <-
  gsub('Use baton', 'Baton', levels(results$thresh.label.short))
levels(results$thresh.label.short) <-
  gsub('use of handcuffs', 'handcuffs', levels(results$thresh.label.short))

results$race.label <- factor(
  results$treat.race,
  levels = c('black', 'hispanic'),
  labels = c('Black civilians', 'Hispanic civilians'),
  ordered = TRUE
)

results$mod.label <- factor(
  results$mod.type,
  levels = c('base', 'full'),
  labels = c('Baseline specification', 'Full specification'),
  ordered = TRUE
)

annotations$race.label <- factor(
  annotations$treat.race,
  levels = c('black', 'hispanic'),
  labels = c('Black civilians', 'Hispanic civilians'),
  ordered = TRUE
)




##################################
## interpretation for main text ##
##################################

results$rho <- round(results$rho, 2)  # fix minor floating point issue

## naive atest, baseline specification
naive.hispanic.base <- results[
  results$mod.type == 'base' &
    results$treat.race == 'hispanic' &
    results$rho == 0 & #rho = 0 makes this estimate naive
    results$qoi == 'atest',
  ]
naive.black.base <- results[
  results$mod.type == 'base' &
    results$treat.race == 'black' &
    results$rho == 0 &
    results$qoi == 'atest',
  ]
## bias-corrected atest, baseline specification
biascorrect.hispanic.base <- results[
  results$mod.type == 'base' &
    results$treat.race == 'hispanic' &
    results$rho == round(hispanic.rs.gfk, 2) &
    results$qoi == 'atest',
  ]
biascorrect.black.base <- results[
  results$mod.type == 'base' &
    results$treat.race == 'black' &
    results$rho == round(black.rs.gfk, 2) &
    results$qoi == 'atest',
  ]



## baseline specification:
##   excess racially motivated handcuffs+ in hispanic and black encounters

## naive estimate for hispanic (vs white) x number of hispanic encounters
## plus naive estimate for black (vs white) x number of black encounters
naive.hispanic.base$excess <-
  naive.hispanic.base$est * naive.hispanic.base$n.minority
naive.black.base$excess <-
  naive.black.base$est * naive.black.base$n.minority
naive.excess <- ## naive.hispanic.base$excess +
  naive.black.base$excess
## names(naive.excess) <- naive.hispanic.base$thresh.label.short
names(naive.excess) <- naive.black.base$thresh.label.short
## bias-corrected atest for hispanic (vs white) x number of hispanic encounters
## plus bias-corrected atest for black (vs white) x number of black encounters
biascorrect.hispanic.base$excess <-
  biascorrect.hispanic.base$est * biascorrect.hispanic.base$n.minority
biascorrect.black.base$excess <-
  biascorrect.black.base$est * biascorrect.black.base$n.minority
biascorrect.excess <-
  ## biascorrect.hispanic.base$excess +
  biascorrect.black.base$excess
## results
excess.base <-
  cbind('naive' = naive.excess, 'bias-corrected' = biascorrect.excess)
excess.base



#################
## plot bounds ##
#################

thresh <- 1. 

ggplot(results[results$thresh = thresh &
                 results$qoi == 'ates',
               ],
       aes(x = rho) #x-axis is value of rho 
       ) +
  geom_hline(yintercept = 0, #draw x-axis
             ) + 
  geom_ribbon(aes(ymin = min.cilo * nrow(d) / 1000, 
                  ymax = max.cihi * nrow(d) / 1000
                  ),
              fill = paste0(red, '80')
              ) +
  geom_ribbon(aes(ymin = min * nrow(d) / 1000,
                  ymax = max * nrow(d) / 1000,
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
  geom_point(aes(y = est * nrow(d) / 1000,
                 color = 'naive'
                 ),
             data = results[results$thresh == thresh & results$rho == 0,],
             color = blue,
             size = 2
             ) +
  geom_errorbar(aes(ymin = est.cilo * nrow(d) / 1000,
                    ymax = est.cihi * nrow(d) / 1000,
                    color = 'naive'
                    ),
                data = results[results$thresh == thresh & results$rho == 0,],
                width = 1,
                size = 1
                ) +
  geom_vline(aes(xintercept = rho),
             data = annotations[annotations$treat.race == 'black',],
             ## data = annotations[ifelse(rep(presentation, nrow(annotations)),
             ##                           annotations$race == 'black',
             ##                           TRUE
             ##                           ),],
             ## linetype = 'dashed',
             size = .25
             ) +
  geom_text(aes(label = text),
            data = annotations[annotations$treat.race == 'black',],
            y = 1100,
            size = 5,
            hjust = 1,
            vjust = -.5,
            angle = 90
            ) +
  theme_light(base_size = 24) +
  theme(legend.position = 'bottom',
        legend.key.size = unit(1, 'cm'),
        legend.spacing.x = unit(.05, 'cm'),
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
    labels = c('naive' = expression('naïve ATE'['M=1'] %*% ' #{stopped}'),
               'TE_S' = expression('ATE'['M=1'] %*% ' #{stopped}'),
               'TE_ST' = expression('ATT'['M=1'] %*% ' #{stopped minorities}')
               )
  ) +
  scale_fill_manual(name = 'x',
                        values = c('naive' = NA,
                                   'TE_S' = red,
                                   'TE_ST' = NA
                                   ),
    labels = c('naive' = expression('naïve ATE'['M=1'] %*% ' #{stopped}'),
               'TE_S' = expression('ATE'['M=1'] %*% ' #{stopped}'),
               'TE_ST' = expression('ATT'['M=1'] %*% ' #{stopped minorities}')
               )
    ) +
  scale_linetype_manual(
    name = 'x',
    values = c('naive' = NA,
               'TE_S' = NA,
               'TE_ST' = 'dashed'
               ),
    labels = c('naive' = expression('naïve ATE'['M=1'] %*% ' #{stopped}'),
               'TE_S' = expression('ATE'['M=1'] %*% ' #{stopped}'),
               'TE_ST' = expression('ATT'['M=1'] %*% ' #{stopped minorities}')
               )
  ) +
  ylab('Civilians subject to racially\ndiscriminatory use of force\n(thousands)\n') +
  xlab('\nProportion of racially discriminatory stops') +
  xlim(0, 1) +
  facet_grid(. ~ race.label) +
  theme(legend.text = element_text(size = 17))
ggsave('pics/bounds_hands_correct_blackwhite.pdf', width = 13, height = 6)
