#!/bin/bash
# ask for the allocation with 1 gpu

srun -A YOUR_ALLOCATION -p standard-s -N1 -n8 --mem=64gb --time=2:00:00 --pty $SHELL