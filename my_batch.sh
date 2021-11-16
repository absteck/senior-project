#!/bin/bash
#SBATCH -J full_bounds_script
#SBATCH -c 8
#SBATCH --mem-per-cpu=10G
#SBATCH -t 10:00:00

module load miniconda 

conda activate parallel_r 
 
R --slave -f full_bounds_script.R 

