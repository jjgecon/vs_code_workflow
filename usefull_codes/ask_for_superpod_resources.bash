#!/bin/bash
# ask for the allocation with 1 gpu
srun -A YOUR_ALLOCATION -N1 -G1 --mem=64gb --time=12:00:00 --pty $SHELL
