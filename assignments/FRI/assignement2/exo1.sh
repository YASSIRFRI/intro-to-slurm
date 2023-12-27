#!/bin/bash




#SBATCH --output=output.out
#SBATCH --array=1-128
#SBATCH --ntasks=128
#SBATCH --nodelist
#SBATCH --partition=special






module purge


module load OpenMPI/4.0.3-GCC-9.3.0 Python/3.8.2GCCCore-9.3.0


mpirun -n $SLURM_ARRAY_JOB_ID python3 montecarloMPI.py



















































