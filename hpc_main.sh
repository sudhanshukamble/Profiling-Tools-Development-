#!/bin/bash

set -e 
source /home/apps/spack/share/spack/setup-env.sh

spack load hpctoolkit

mkdir -p /home/shavak/hpctoolkit/output

echo "Enter executable path"
read -p "executable_path: " executable_path

echo "Choose an event: REALTIME, CPUTIME, MEMLEAK"
read -p "event_name: " event_name

executable_name=$(basename "$executable_path")
output_dir="hpctoolkit-${executable_name}-measurement"

hpcrun -e "$event_name" -o "$output_dir" -t "$executable_path"

hpcstruct "$output_dir"

#database_dir="/home/shavak/hpctoolkit/output"

hpcprof -S "$output_dir" -o "$output_dir" "$output_dir"

hpcviewer "$output_dir"

echo "HPCToolkit analysis completed.
