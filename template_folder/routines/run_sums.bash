#!/bin/bash

module purge
module load conda julia R stata matlab
module list

# Run Python script
echo "Running Python script"
python3 /users/gonzalezjj/Papers/test_routines/sum_100.py

# Run Julia script
echo "Running Julia script"
julia /users/gonzalezjj/Papers/test_routines/sum_100.jl

# Run Stata script without a log
echo "Running Stata script"
stata -b do /users/gonzalezjj/Papers/test_routines/sum_100.do
cat /users/gonzalezjj/Papers/test_routines/sum_100.log

# Run MATLAB script
echo "Running MATLAB script"
matlab -batch "run('/users/gonzalezjj/Papers/test_routines/sum_100.m')"

# Run R script
echo "Running R script"
Rscript /users/gonzalezjj/Papers/test_routines/sum_100.R