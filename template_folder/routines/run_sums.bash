#!/bin/bash

module purge                           
module load conda julia R stata matlab
module list

# Run Python script
echo "Running Python script"
python3 sum_100.py

# Run Julia script
echo "Running Julia script"
julia sum_100.jl

# Run Stata script without a log
echo "Running Stata script"
stata -b do sum_100.do
cat sum_100.log

# Run MATLAB script
echo "Running MATLAB script"
matlab -batch "run('sum_100.m')"

# Run R script
echo "Running R script"
Rscript sum_100.R