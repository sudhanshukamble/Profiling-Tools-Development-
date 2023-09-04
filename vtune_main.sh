#!/bin/bash

module load vtune/2023.0.0

echo "enter the events you want to profile 
       (hotspots, memory-consumption, hpc-performance):"
read events

echo "enter the path to the application you want to profile:"
read app_path

echo "enter the path to the initial result directory:"
read result_dir

if [ ! -z "$(ls -A $result_dir)" ]; then

    echo "Initial result directory is not empty."

    count=1
    while true; do
        new_result_dir="${result_dir}_${count}"
        if [ ! -d "$new_result_dir" ]; then
            result_dir="$new_result_dir"
            mkdir -p "$result_dir"
            break
        fi
        ((count++))
    done
fi

vtune_cmd="vtune -collect $events -result-dir $result_dir -- $app_path"

echo "$vtune_cmd"

echo "profiling results are available in $result_dir"

res= $result_dir

vtune-gui $res


