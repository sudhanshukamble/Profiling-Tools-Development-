#!/bin/bash

#export PATH=/home/apps/spack/opt/spack/linux-centos7-cascadelake/gcc-11.2.0/tau-2.30.2-n2jpt6v25fkzhf53u5gfs2oes2v52kay:$PATH

export PATH=/home/user24/project/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/tau-2.32-3glvqcdlatqmxlpoyey6zmtd7qkbszgb/bin:$PATH

export PATH=/home/user24/project/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/tau-2.32-3glvqcdlatqmxlpoyey6zmtd7qkbszgb/lib:$PATH

export PATH=/home/user24/project/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/tau-2.32-3glvqcdlatqmxlpoyey6zmtd7qkbszgb/include:$PATH

echo "Select an option:"
echo "1. Run pprof"
echo "2. Launch paraprof"
echo "3. Manage taudb"
echo "4. Launch taudb_gui"
read -p "Enter the number of your choice: " choice

case $choice in
    1)
        echo "Enter a path: "
        read user_input
        pprof "$user_input"
        ;;
    2)
        paraprof &
        ;;
    3)
        taudb_manage
        ;;
    4)
        taudb_gui &
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

                                                                                                                                                                                                          

