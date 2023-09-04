#!/bin/bash

set -e

select_profiling_Tool_Choice() 
{
    echo "Select a profiling Tool option:"

    echo "1. Intel Offload advisor"
    echo "2. Intel VTune"
    echo "3. HPCToolkit"
    echo "4. TAU"
    echo "5. Likwid"
    echo "6. Exit"
    read -p "Enter your choice: " choice
}


while true; do
    select_profiling_Tool_Choice

    case $choice in
        1)
            /home/user24/prn/IntelAdvisor_offload_script.sh

            ;;
        2)
            /home/user24/project/vtune_tool/main_vtune.sh

            ;;
        3)
            /home/apps/spack/opt/spack/linux-centos7-cascadelake/gcc-11.2.0/hpctoolkit-2021.10.15-xwzccbhlwuknxd3d2oiiok6dmnss3eiv/script/hpctoolkit_script.sh
            ;;
        4)
            /home/user24/project/tau/tau_main.sh

            ;;
        5)
            /home/user24/likwid_Scripts/likwid_script_v3.sh
            ;;
        6)
            echo "Exiting."
            exit
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done
~    
