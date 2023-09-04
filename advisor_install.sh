#!/bin/bash

ADVISOR_PACKAGE="Intel offload advisor"

if command -v $ADVISOR_PACKAGE &>/dev/null; then
    echo "Advisor is already installed."

else
    cd  /hpcap/user24/prn

    DOWNLOAD_COMMAND="wget https://registrationcenter-download.intel.com/akdlm/IRC_NAS/992857b9-624c-45de-9701-f6445d845359/l_BaseKit_p_2023.2.0.49397.sh"

    chmod +x  l_BaseKit_p_2023.2.0.49397.sh
    PATH="/hpcap/user24/prn/l_BaseKit_p_2023.2.0.49397.sh"
      echo "Installing advisor..."

     bash PATH


  if [ $? -eq 0 ]; then
        echo "Advisor installation completed successfully."
    else
        echo "Error: Advisor installation failed. Please check your package manager and try again."
        exit 1
    fi

fi

*********************************************************************************************************
Run ->   vim IntelAdvisor_install_script.sh
               chmod +x IntelAdvisor_install_script.sh
                ./IntelAdvisor_install_script.sh

*********************************************************************************************************
~                                                                                                          :wq

