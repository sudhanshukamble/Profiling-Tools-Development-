#!/bin/bash

source /home/user24/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/likwid-5.2.2-woqqbjbz6itml3tre3a7id7q5nqsu6z6
source /home/user24/spack/share/spack/setup-env.sh

export PATH=/home/user24/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/likwid-5.2.2-woqqbjbz6itml3tre3a7id7q5nqsu6z6/bin:$PATH

# Load LIKWID environment
module load likwid

# Function to print available LIKWID tools
while true; do
print_likwid_tools() {


    echo "Available LIKWID tools:"
    echo "1. likwid-topology"
    echo "2. likwid-pin"
    echo "3. likwid-perfctr"
    echo "4. likwid-bench"
    echo "5. Exit"

}

print_likwid_tools
read -p " Choose the Option from above: " tool_choice

read -p "Enter the executable file name: " fname


case $tool_choice in

    1)
        likwid-topology -G
continue;;
    2)
        likwid-pin -c 0,2,4-6 ./$fname
         #likwid-pin -c 3,4,5,6 -s 0x1 ./$fname

continue;;
    3)
        likwid-perfctr  -C S0:1  -g BRANCH  ./$fname
continue;;
    4)
        likwid-bench  -t copy -w S1:100kB
continue;;
    5)
        echo "Exiting...." 
break;;
    *)
        echo "Invalid Choice"

esac
done
                                                                                                                                                                                          


