#!/bin/bash

wget = "https://registrationcenter-download.intel.com/akdlm/IRC_NAS/dfae6f23-6c90-4b9f-80e2-fa2a5037fe36/l_oneapi_vtune_p_2023.2.0.49485.sh"

chmod +x l_oneapi_vtune_p_2023.2.0.49485.sh

./l_oneapi_vtune_p_2023.2.0.49485.sh

module load vtune

echo "VTUNE VERSION"

which vtune

echo "Intel VTune Profiler installation completed."

