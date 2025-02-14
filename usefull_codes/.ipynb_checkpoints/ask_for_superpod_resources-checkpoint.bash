#!/bin/bash
# ask for the allocation with 1 gpu
srun -A ozak_jjgonzalez_0001 -N1 -G1 --mem=64gb --time=12:00:00 --pty $SHELL
