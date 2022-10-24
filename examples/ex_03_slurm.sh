#!/bin/bash -l

#SBATCH -J factorialFunctionViaJobArrays                         # Job name
#SBATCH -o logs/factorialFunctionViaJobArrays.%j.out              # Name of stdout output file (%j expands to jobId)
#SBATCH -e logs/factorialFunctionViaJobArrays.%j.err              # Error File Name 
#SBATCH --mail-type=begin                      # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=lhw150030@utdallas.edu     # Where to send mail	
#SBATCH -N 1                                   # Total number of nodes requested
#SBATCH -n 1                                   # Total number of mpi tasks requested
#SBATCH -t 00:01:00                            # Run time (hh:mm:ss) - 1 minute
#SBATCH --array=1-4


echo Running on host: `hostname`
echo Running scripts for slurm array index: "$SLURM_ARRAY_TASK_ID"
julia ex_03_factorial_function_via_job_arrays.jl

