#!/bin/bash
#SBATCH --job-name=exo9
#SBATCH --partition=gpu
#SBATCH --ntasks-per-node=1
#SBATCH --reservation=sccs-dna-account_23
#SBATCH --output=exo9.out
#SBATCH --error=exo9.err
#SBATCH --array=0-4


declare -a num_samples=(1000 10000 100000 1000000 10000000)

python pi.py $SLURM_ARRAY_TASK_ID

