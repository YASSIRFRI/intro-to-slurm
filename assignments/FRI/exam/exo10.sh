#!/bin/bash
#SBATCH --job-name=exo10
#SBATCH --output=exo10.out
#SBATCH --error=exo10.err
#SBTACH --partition=gpu
#SBTACH --nodelist=node08,node13
#SBATCH --reservation=sccs-dna-account_23

if [ $SLURM_CPUS_ON_NODE -le 4 ]; then
  job_id1=$(sbatch script1.sh | awk '{print $4}')
elif [ $SLURM_CPUS_ON_NODE -le 8 ]; then
  job_id2=$(sbatch script2.sh | awk '{print $4}')
else
  job_id3=$(sbatch script3.sh | awk 'print{$4}')
fi


if [ -n job_id1]; then
    sbatch --dependency=afterok:$(job_id1) dependent_script1.sh
elif [ -n job_id2]; then
    sbatch --dependency=afterok:$(job_id2) dependent_script2.sh
else
    sbatch --dependency=afterok:$(job_id3) dependent_script3.sh
fi








