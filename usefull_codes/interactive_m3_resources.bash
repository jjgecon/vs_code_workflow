#!/bin/bash

# Prompt for input values
read -p "Enter the partition (-p) (dev, standard-s, standard-l): " partition
read -p "Enter the number of CPUs nodes (-N, default 1): " cpu_count
read -p "Enter the number of cores (-n, default 8): " core_count
read -p "Enter the memory size in GB (--mem=, default 32): " memory
read -p "Enter the time in HH:MM:SS format (--time): " time

# Generate the srun command
command="srun -A YOUR_ALLOCATION -p${partition}  -N${cpu_count} -n${core_count} --mem=${memory}gb --time=${time} --pty \$SHELL"

# Display the command
echo -e "\nGenerated srun command:"
echo "$command"

# Optionally, run the command
read -p "Do you want to execute this command? (y/n): " execute
if [[ "$execute" == "y" ]]; then
    eval "$command"
else
    echo "Command not executed."
fi