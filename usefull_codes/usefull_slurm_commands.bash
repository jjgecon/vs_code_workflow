
# ----------------- 
# slurm commands 
# -----------------

# check the time left on the job
squeue -h -j JOB_ID -O TimeLeft
# or 
squeue -h -O TimeLeft # for a general job time left


# ----------------- 
# github lfs 
# -----------------
# M3
module load gcc/11.2.0  git-lfs/3.1.2-5c2wtrg

# Superpod
module load gcc/11.2.0 git-lfs/3.3.0-celzncr

# ----------------- 
# Jupyter notebook 
# -----------------

# Run jupyter notebook
jupyter lab --ip=0.0.0.0 --no-browser

# Kill jupyter notebooks 
pkill -f -1 jupyter*