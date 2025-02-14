#!/bin/bash

#SBATCH -A YOUR_ALLOCATION    # Your ColdFront Allocation
#SBATCH -J Telenovelas_female_labor_HPC    # job name  
#SBATCH -p standard-s  # partition
#SBATCH -e slurm_outputs/error-%j.txt
#SBATCH -o slurm_outputs/output-%j.txt
#SBATCH -n 1           # number of tasks
#SBATCH -c 12          # number of cores per task
#SBATCH --mem=64G      # memory
#SBATCH -t 0-24:00:00  # time limit days-HH:MM:SS


module load miniforge
mamba activate econ_geo

cd Papers/Telenovelas_female_work/routines/

echo "Current working directory: $(pwd)"
echo "Processing Overlapping Geometries"
python simple_python.py
