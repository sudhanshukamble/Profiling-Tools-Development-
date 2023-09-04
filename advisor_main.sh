#!/bin/bash


module load advisor


echo "Enter configuration:"
read config

echo "Enter accuracy:low,high,medium:"
read accuracy

echo "Enter the project directory:"
read project_dir


echo "Enter the path to the binary file:"
read binary_path

echo "Enter name for generated report:"
read vector_report

if [ ! -f "$binary_path" ]; then
    echo "Binary path not found: $binary_path"
    exit 1
fi

advisor --collect=offload --accuracy="$accuracy" --config="$config" --project-dir="$project_dir" -- "$binary_path"

echo "Opening Intel advisor GUI...."

advixe-gui "$project_dir"

echo "profiling done!........
