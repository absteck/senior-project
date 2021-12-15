# S&DS 491 Senior Project
Analysis of data from the US Sentencing Commission, based on Dean Knox, Will Lowe, and Jonathan Mummolo's 2019 paper, “Administrative Records Mask Racially Biased Policing.” 

full_bounds_script.R - Computes bounds on ATE_{M=1} and ATT_{M=1} for 2006-2008 data. Final results include separate estimates for if the response function includes only pre-treatment variables versus all covariates. 

imm_bounds_script.R - Computes bounds on ATE_{M=1} and ATT_{M=1} for immigration data from 2000-2008. Pre-treatment model includes indicators for years 2000 - 2007. Models do not include PRIM_OFFENSE covariate because the value is the same ("immigration") for all observations. 

my_batch.sh and imm_batch.sh - Shell scripts for running full_bounds_script.R and imm_bounds_script.R respectively. 

base_vs_full_bounds_script.R and base_vs_full_imm_bounds_script.R - Compute bounds for models with all covariates, including post-treatment, and no covariates. 

plot_script.R and imm_plot_script.R - Creates plots for results of full_bounds_script.R and imm_bounds_script.R, respectively. Generates separate plots for each sentence length threshold. 


