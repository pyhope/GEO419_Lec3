#!/bin/bash
#SBATCH --job-name=lmp           # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --ntasks-per-node=32     # total number of tasks per node
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=4G         # memory per cpu-core (4G is default)
#SBATCH --time=02:00:00          # total run time limit (HH:MM:SS)

export OMP_NUM_THREADS=1
export TF_INTRA_OP_PARALLELISM_THREADS=1
export TF_INTER_OP_PARALLELISM_THREADS=1

module purge
module load anaconda3/2024.10
conda activate /path/to/your/deepmd-kit

srun --mpi=pmix lmp -in in.lammps
