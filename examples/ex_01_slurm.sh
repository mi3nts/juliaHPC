#!/bin/bash -l

#SBATCH -J helloWorld  # Job name
#SBATCH -o logs/helloWorld.%j.out              # Name of stdout output file (%j expands to jobId)
#SBATCH -e logs/helloWorld.%j.err              # Error File Name 
#SBATCH --mail-type=BEGIN,END,FAIL             # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=lhw150030@utdallas.edu       # Where to send mail	
#SBATCH -N 1                                   # Total number of nodes requested
#SBATCH -n 1                                   # Total number of mpi tasks requested
#SBATCH -t 00:01:00                            # Run time (hh:mm:ss) - 1 minute


echo Running julia example scripts with tast ID: "$SLURM_ARRAY_TASK_ID"
echo Running on host: `hostname`
julia ex_01_hello_world.jl
