#!/bin/bash

#SBATCH --job-name=jobArray
#SBATCH --output=output.out
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --array=1-10

echo "task ${SLURM_ARRAY_TASK_ID}"

srun python lineReader.py  $SLURM_ARRAY_TASK_ID





























