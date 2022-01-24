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

load('data/sqf_fryer_2003_2013.Rdata')
d <- d2; rm(d2)

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
races.abbr <- c('white', 'black', 'hisp', 'asian', 'other')
races <- c('white', 'black', 'hispanic', 'asian', 'other')
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




##################
## load results ##
##################

## bounds results
ndraws <- 5000
alpha <- .95
results.fname <- sprintf('intermediate_files/bounds_results_n%s_alpha%s.rds',
                         ndraws,
                         alpha * 100
                         )
results <- readRDS(results.fname)
results$n.minority <- ifelse(results$treat.race == 'black',
                             sum(d$race == 'black', na.rm = TRUE),
                             sum(d$race == 'hispanic', na.rm = TRUE)
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



##########################################
## ATT_M=1 interpretation for main text ##
##########################################

## fix minor floating point issue (seq)
## ## > .1 %in% seq(.01, .99, .01)
## ## [1] FALSE
results$rho <- round(results$rho, 2)

## naive atest, baseline specification
naive.hispanic.base <- results[
  results$mod.type == 'base' &
    results$treat.race == 'hispanic' &
    results$rho == 0 &
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

## naive atest, full specification
naive.hispanic.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'hispanic' &
    results$rho == 0 &
    results$qoi == 'atest',
  ]
naive.black.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'black' &
    results$rho == 0 &
    results$qoi == 'atest',
  ]
## bias-corrected atest, full specification
biascorrect.hispanic.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'hispanic' &
    results$rho == round(hispanic.rs.gfk, 2) &
    results$qoi == 'atest',
  ]
biascorrect.black.full <- results[
  results$mod.type == 'full' &
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
naive.excess <- naive.hispanic.base$excess + naive.black.base$excess
names(naive.excess) <- naive.hispanic.base$thresh.label.short
## bias-corrected atest for hispanic (vs white) x number of hispanic encounters
## plus bias-corrected atest for black (vs white) x number of black encounters
biascorrect.hispanic.base$excess <-
  biascorrect.hispanic.base$est * biascorrect.hispanic.base$n.minority
biascorrect.black.base$excess <-
  biascorrect.black.base$est * biascorrect.black.base$n.minority
biascorrect.excess <-
  biascorrect.hispanic.base$excess + biascorrect.black.base$excess
## results
excess.base <-
  cbind('naive' = naive.excess, 'bias-corrected' = biascorrect.excess)
excess.base

## full specification:
##   excess racially motivated handcuffs+ in hispanic and black encounters
##   (controlling for covariates, estimate is actually higher)

## naive estimate for hispanic (vs white) x number of hispanic encounters
## plus naive estimate for black (vs white) x number of black encounters
naive.hispanic.full$excess <-
  naive.hispanic.full$est * naive.hispanic.full$n.minority
naive.black.full$excess <-
  naive.black.full$est * naive.black.full$n.minority
naive.excess <- naive.hispanic.full$excess + naive.black.full$excess
names(naive.excess) <- naive.hispanic.full$thresh.label.short
## bias-corrected atest for hispanic (vs white) x number of hispanic encounters
## plus bias-corrected atest for black (vs white) x number of black encounters
biascorrect.hispanic.full$excess <-
  biascorrect.hispanic.full$est * biascorrect.hispanic.full$n.minority
biascorrect.black.full$excess <-
  biascorrect.black.full$est * biascorrect.black.full$n.minority
biascorrect.excess <-
  biascorrect.hispanic.full$excess + biascorrect.black.full$excess
## results
excess.full <-
  cbind('naive' = naive.excess, 'bias-corrected' = biascorrect.excess)

## ... a naïve analysis that assumes no race-based selection into the data
## suggests...
## ... To characterize bias in estimates of the ATT_{M=1}...
excess.full

## We can also quantify the number of masked instances of racially
## discriminatory uses of force as a percentage of all uses of force...
sum(d$force[d$race %in% c('black', 'hispanic')] >= 1)#dkhere



##########################################
## ATE_M=1 interpretation for main text ##
##########################################

## naive ates, baseline specification
naive.hispanic.base <- results[
  results$mod.type == 'base' &
    results$treat.race == 'hispanic' &
    results$rho == 0 &
    results$qoi == 'ates',
  ]
naive.black.base <- results[
  results$mod.type == 'base' &
    results$treat.race == 'black' &
    results$rho == 0 &
    results$qoi == 'ates',
  ]
## bias-corrected ates, baseline specification
bounds.hispanic.base <- results[
  results$mod.type == 'base' &
    results$treat.race == 'hispanic' &
    results$rho == round(hispanic.rs.gfk, 2) &
    results$qoi == 'ates',
  ]
bounds.black.base <- results[
  results$mod.type == 'base' &
    results$treat.race == 'black' &
    results$rho == round(black.rs.gfk, 2) &
    results$qoi == 'ates',
  ]

## naive ates, full specification
naive.hispanic.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'hispanic' &
    results$rho == 0 &
    results$qoi == 'ates',
  ]
naive.black.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'black' &
    results$rho == 0 &
    results$qoi == 'ates',
  ]
## bias-corrected ates, full specification
bounds.hispanic.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'hispanic' &
    results$rho == round(hispanic.rs.gfk, 2) &
    results$qoi == 'ates',
  ]
bounds.black.full <- results[
  results$mod.type == 'full' &
    results$treat.race == 'black' &
    results$rho == round(black.rs.gfk, 2) &
    results$qoi == 'ates',
  ]

## base specification:
##   naive & gfk-based bounds of diff in force use rate (per 1k encounters)
##   toward hispanic (vs white) and toward black (vs white)
##   averaging over

ates.hispanic.base <-
  naive.hispanic.base[,c('treat.race', 'thresh.label.short', 'est')]
ates.hispanic.base$est <- round(1000 * naive.hispanic.base$est, 1)
ates.hispanic.base$min <- round(1000 * bounds.hispanic.base$min, 1)
ates.hispanic.base$max <- round(1000 * bounds.hispanic.base$max, 1)
ates.hispanic.base

ates.black.base <-
  naive.black.base[,c('treat.race', 'thresh.label.short')]
ates.black.base$naive <- round(1000 * naive.black.base$est, 1)
ates.black.base$min <- round(1000 * bounds.black.base$min, 1)
ates.black.base$max <- round(1000 * bounds.black.base$max, 1)
ates.black.base

ates.hispanic.full <-
  naive.hispanic.full[,c('treat.race', 'thresh.label.short', 'est')]
ates.hispanic.full$est <- round(1000 * naive.hispanic.full$est, 1)
ates.hispanic.full$min <- round(1000 * bounds.hispanic.full$min, 1)
ates.hispanic.full$max <- round(1000 * bounds.hispanic.full$max, 1)
ates.hispanic.full

ates.black.full <-
  naive.black.full[,c('treat.race', 'thresh.label.short')]
ates.black.full$naive <- round(1000 * naive.black.full$est, 1)
ates.black.full$min <- round(1000 * bounds.black.full$min, 1)
ates.black.full$max <- round(1000 * bounds.black.full$max, 1)
ates.black.full

## We turn first to estimates of the ATE_{M=1} using the main specification,
## which adjusts for a battery of covariates...
print(ates.black.full, row.names = FALSE)
print(ates.hispanic.full, row.names = FALSE)

naive.hispanic.base$excess <-
  naive.hispanic.base$est * naive.hispanic.base$n.minority
naive.black.base$excess <-
  naive.black.base$est * naive.black.base$n.minority
naive.excess <- naive.hispanic.base$excess + naive.black.base$excess
names(naive.excess) <- naive.hispanic.base$thresh.label.short
## bias-corrected atest for hispanic (vs white) x number of hispanic encounters
## plus bias-corrected atest for black (vs white) x number of black encounters
biascorrect.hispanic.base$excess <-
  biascorrect.hispanic.base$est * biascorrect.hispanic.base$n.minority
biascorrect.black.base$excess <-
  biascorrect.black.base$est * biascorrect.black.base$n.minority
biascorrect.excess <-
  biascorrect.hispanic.base$excess + biascorrect.black.base$excess
## results
excess.base <-
  cbind('naive' = naive.excess, 'bias-corrected' = biascorrect.excess)
excess.base

## full specification:
##   excess racially motivated handcuffs+ in hispanic and black encounters
##   (controlling for covariates, estimate is actually higher)

## naive estimate for hispanic (vs white) x number of hispanic encounters
## plus naive estimate for black (vs white) x number of black encounters
naive.hispanic.full$excess <-
  naive.hispanic.full$est * naive.hispanic.full$n.minority
naive.black.full$excess <-
  naive.black.full$est * naive.black.full$n.minority
naive.excess <- naive.hispanic.full$excess + naive.black.full$excess
names(naive.excess) <- naive.hispanic.full$thresh.label.short
## bias-corrected atest for hispanic (vs white) x number of hispanic encounters
## plus bias-corrected atest for black (vs white) x number of black encounters
biascorrect.hispanic.full$excess <-
  biascorrect.hispanic.full$est * biascorrect.hispanic.full$n.minority
biascorrect.black.full$excess <-
  biascorrect.black.full$est * biascorrect.black.full$n.minority
biascorrect.excess <-
  biascorrect.hispanic.full$excess + biascorrect.black.full$excess
## results
excess.full <-
  cbind('naive' = naive.excess, 'bias-corrected' = biascorrect.excess)
excess.full



#################
## plot bounds ##
#################

thresh <- 1

ggplot(results[results$thresh == thresh &
                 results$qoi == 'ates',
               ],
       aes(x = rho)
       ) +
  geom_hline(yintercept = 0,
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
  ylab('Civilians subject to any racially\ndiscriminatory use of force (thousands)\n') +
  xlab('\nProportion of racially discriminatory stops') +
  xlim(0, 1) +
  facet_grid(mod.label ~ race.label) +
  theme(legend.text = element_text(size = 17))
ggsave('pics/bounds_hands_correct.pdf', width = 12, height = 9)

thresh <- 2:7
for (mod.type in c('base', 'full')){
  for (treat.race in c('black', 'hispanic')){
    keep <-
      results$thresh %in% thresh &
      results$mod.type == mod.type &
      results$treat.race == treat.race &
      results$rho <= .8
    p <- ggplot(results[keep & results$qoi == 'ates',],
           aes(x = rho)
           ) +
      geom_hline(yintercept = 0,
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
                results[keep & results$qoi == 'atest',
                        ],
                color = 'black',
                size = 1
                ) +
      geom_point(aes(y = est * nrow(d) / 1000,
                     color = 'naive'
                     ),
                 data = results[keep & results$rho == 0,],
                 color = blue,
                 size = 2
                 ) +
      geom_errorbar(aes(ymin = est.cilo * nrow(d) / 1000,
                        ymax = est.cihi * nrow(d) / 1000,
                        color = 'naive'
                        ),
                    data = results[keep & results$rho == 0,],
                    width = 1,
                    size = 1
                    ) +
      geom_vline(aes(xintercept = rho),
                 data = annotations[annotations$treat.race == treat.race,],
                 size = .25
                 ) +
      ## geom_text(aes(label = text),
      ##           data = annotations[annotations$treat.race == treat.race,],
      ##           y = 1550,
      ##           size = 5,
      ##           hjust = 1,
      ##           vjust = -.5,
      ##           angle = 90
      ##           ) +
      theme_light(base_size = 24) +
      theme(legend.position = 'bottom',
            legend.key.size = unit(1, 'cm'),
            legend.spacing.x = unit(.25, 'cm'),
            panel.grid.minor = element_blank(),
            panel.grid.major = element_line(linetype = 'dashed')
            ) +
      guides(color = guide_legend(title = NULL, order = 1),
             linetype = guide_legend(title = NULL, order = 2),
             fill = guide_legend(title = NULL, order = 3)
             ) +
      scale_color_manual(
        name = 'x',
        values = c('naive' = blue),
        labels = expression('naïve ATE'['M=1'] %*% ' #{stopped}')
      ) +
      scale_fill_manual(name = 'x',
                        values = c('TE_S' = red),
                        labels = expression('ATE'['M=1'] %*% ' #{stopped}')
                        ) +
      scale_linetype_manual(
        name = 'x',
        values = c('TE_ST' = 'dashed'),
        labels = expression('ATT'['M=1'] %*% ' #{stopped minorities}')
      ) +
      ylab('Civilians subject to any racially\ndiscriminatory use of force (thousands)\n') +
      xlab('\nProportion of discriminatory stops') +
      xlim(0, .8) +
      facet_wrap('thresh.label.short', scales = 'free') +
      theme(legend.text = element_text(size = 17))
    ptitle <- sprintf('pics/bounds_other_correct_%s_%s.pdf', mod.type, treat.race)
    ggsave(ptitle, plot = p, width = 14, height = 8)
  }
}



###############################################
## table with gfk estimates for racial stops ##
###############################################

keep <-
  ifelse(results$race == 'black',
         results$rho %in% c(0, round(black.rs.gfk, 2)),
         results$rho %in% c(0, round(hispanic.rs.gfk, 2))
         ) &
  results$qoi == 'ates'

results.gfk <- results[keep,]
results.gfk$estimator <- ifelse(
  results.gfk$rho == 0,
  'naive',
  'bounds'
)
## naive estimates and bounds estimates
results.gfk$result <- ifelse(
  results.gfk$estimator == 'naive',
  round(results.gfk$est * 1000, 2),
  sprintf('(%s, %s)',
          round(results.gfk$min * 1000, 2),
          round(results.gfk$max * 1000, 2)
          )
)
## ci
results.gfk$ci <- ifelse(
  results.gfk$estimator == 'naive',
  sprintf('(%s, %s)',
          round(results.gfk$est.cilo * 1000, 2),
          round(results.gfk$est.cihi * 1000, 2)
          ),
  sprintf('(%s, %s)',
          round(results.gfk$min.cilo * 1000, 2),
          round(results.gfk$max.cihi * 1000, 2)
          )
)

results.gfk <- melt(
  results.gfk[, c('thresh.label',
                  'race.label',
                  'mod.type',
                  'estimator',
                  'result',
                  'ci'
                  )],
  id.vars = c('thresh.label', 'race.label', 'mod.type', 'estimator'
              )
)

results.gfk <- dcast(
  results.gfk,
  race.label + thresh.label + variable ~ mod.type + estimator
)

## Table 1 (top)
##
## ates table for black encounters
results.gfk[results.gfk$race.label == 'Black civilians',]
print(
  xtable(results.gfk[results.gfk$race.label == 'Black civilians',
                     -match(c('race.label', 'variable'), colnames(results.gfk))
                     ]
         ),
  include.rownames = FALSE,
  file = "tables/table1_black.tex"
)
## Table 1 (bottom)
##
## ates table for hispanic encounters
results.gfk[results.gfk$race.label == 'Hispanic civilians',]
print(
  xtable(results.gfk[results.gfk$race.label == 'Hispanic civilians',
                     -match(c('race.label', 'variable'), colnames(results.gfk))
                     ]
         ),
  include.rownames = FALSE,
  file = "tables/table1_hispanic.tex"
)



#####################################################################
## proportion of racially motivated force missed by naive approach ##
#####################################################################

## naive results and our preferred results
rhos <- c(0, 0.32)
results <- results[results$rho %in% rhos &
                     results$qoi == 'atest' &
                     results$mod.type == 'full',
                   ]
## no bounds for atest
results$min <- results$max <- results$min.cilo <- results$max.cihi <- NULL

## append various counts of events for comparison
encounters.by.race <- table(d$race)
uof.by.race <- sapply(1:7,
                      function(thresh){
                        table(d$race[d$force >= thresh])
                      })
results$uof.total <- sapply(1:nrow(results),
                            function(i){
                              uof.by.race[results$treat.race[i],
                                          results$thresh[i]
                                          ]
                            })
results$uof.racial <- sapply(1:nrow(results),
                             function(i){
                               results$est[i] *
                                 encounters.by.race[results$treat.race[i]]
                             })
results$uof.racial.cilo <- sapply(1:nrow(results),
                             function(i){
                               results$est.cilo[i] *
                                 encounters.by.race[results$treat.race[i]]
                             })
results$uof.racial.cihi <- sapply(1:nrow(results),
                             function(i){
                               results$est.cihi[i] *
                                 encounters.by.race[results$treat.race[i]]
                             })

results$uof.racial.prop <- results$uof.racial / results$uof.total
print(
  results[,
          c('rho',
            'treat.race',
            'thresh.label.short',
            'uof.racial',
            'uof.total',
            'uof.racial.prop'
            )
          ],
  digits = 2
)

## Using the approach in (Fryer, 2019), one would conclude that about 10% would
## not have occurred had those civilians been white.
(
  results$uof.racial[
    results$rho == 0 & results$treat.race == 'black' & results$thresh == 1
  ] +
    results$uof.racial[
      results$rho == 0 & results$treat.race == 'hispanic' & results$thresh == 1
    ]
) / (
  results$uof.total[
    results$rho == 0 & results$treat.race == 'black' & results$thresh == 1
  ] +
    results$uof.total[
      results$rho == 0 & results$treat.race == 'hispanic' & results$thresh == 1
    ]
)
## Using our bias-corrected approach, we find that in fact 39% were discriminatory
(
  results$uof.racial[
    results$rho == .32 & results$treat.race == 'black' & results$thresh == 1
  ] +
    results$uof.racial[
      results$rho == .32 & results$treat.race == 'hispanic' & results$thresh == 1
    ]
) / (
  results$uof.total[
    results$rho == .32 & results$treat.race == 'black' & results$thresh == 1
  ] +
    results$uof.total[
      results$rho == .32 & results$treat.race == 'hispanic' & results$thresh == 1
    ]
)

results$Estimator <- ifelse(results$rho == 0,
                            'naïve',
                            'corrected'
                            )
results$Estimator <- factor(results$Estimator,
                            levels = c('naïve',
                                       'corrected'
                                       )
                            )

results$thresh.label.multiline <-
  gsub('(At least|Use baton or) ', '\\1\n', results$thresh.label)


ggplot(results,
       aes(x = thresh.label.multiline,
           y = uof.racial / uof.total,
           ymin = uof.racial.cilo / uof.total,
           ymax = uof.racial.cihi / uof.total,
           color = Estimator,
           shape = Estimator
           )
       ) +
  geom_hline(yintercept = 0, linetype = 'dashed') +
  geom_point(size = 3,
             position = position_dodge(width = .25)
             ) +
  geom_errorbar(width = 0,
                position = position_dodge(width = .25)
                ) +
  ## geom_line(position = position_dodge(width = .25)) +
  scale_color_manual(values = c('naïve' = red,
                                'corrected' = blue
                                )
                     ) +
  xlab(NULL) +
  ylab('Racially discriminatory uses of force\ndivided by total force incidents\n') +
  theme_light(base_size = 24) +
  theme(legend.position = 'bottom',
        legend.key.size = unit(1, 'cm'),
        legend.spacing.x = unit(.25, 'cm'),
        panel.grid.minor = element_blank(),
        panel.grid.major = element_line(linetype = 'dashed'),
        legend.text = element_text(size = 17),
        axis.text.x = element_text(angle = 45, hjust = 1)
        ) +
  facet_wrap('race.label')
ggsave('pics/proportion_missed.pdf', width = 16, height = 9)

