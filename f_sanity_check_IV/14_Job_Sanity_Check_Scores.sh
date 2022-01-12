#!/bin/bash
#SBATCH --job-name=sanity_check_IV
#SBATCH --output=sanity_check_scores_slurm.txt
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=22
#SBATCH --time=20:00:00
#SBATCH --mem=100000M

#Put path in variable
CODE="${HOME}/scratch/InsomniaMRPheWAS/code/PHESANT-MR-PheWAS-Insomnia/f_sanity_check_IV"

#Load R
module add languages/r/4.0.2

#Run R script
cd $CODE
R CMD BATCH --no-save --no-restore sanity_check_scores.R sanity_check_scores_r_log.txt
