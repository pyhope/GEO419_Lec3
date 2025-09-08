#!/bin/bash
#SBATCH --job-name=vasp      # create a short name for your job
#SBATCH --nodes=2            # node count
#SBATCH --ntasks-per-node=32 # total number of tasks per node
#SBATCH --cpus-per-task=1    # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=4G     # memory per cpu-core (4G is default)
#SBATCH --time=02:00:00      # total run time limit (HH:MM:SS)

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export PATH=$PATH:/scratch/network/your_netid/software/vasp.6.3.2/bin

module purge
module load intel-oneapi/2024.2 intel-mpi/oneapi/2021.13 intel-mkl/2024.2

srun vasp_gam
