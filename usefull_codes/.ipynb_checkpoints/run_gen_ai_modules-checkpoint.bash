#!/bin/bash

# load modules needed
module load conda gcc
module load cuda
module load cudnn

# activate environment and launch the jupyterlab
conda activate gen_ai
jupyter lab --ip=0.0.0.0 --no-browser