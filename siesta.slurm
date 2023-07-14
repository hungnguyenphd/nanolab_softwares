#!/bin/bash
#SBATCH --job-name=test
#SBATCH --nodes 5
#SBATCH --ntasks-per-node=8
#SBATCH -p i9k
#SBATCH --mem=0
#SBATCH --requeue
#SBATCH --output=stdout-%x.%j.out
#SBATCH --error=stderr-%x.%j.err

mpiexec siesta ZnS_qd.fdf
