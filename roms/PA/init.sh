##/bin/bash
            echo -e '\e[104mYou are about to Initialize Paranoid Android\e[0m'
            sleep 1
	    echo -e '\e[91mPress any key to confirm you want to Initialize AOSiP\e[0m'
	    read -n 1 -s
            echo -e '\e[32mSetting nougat-mr2 as your branch. You can not currently change this.\e[0m'
            repo init -u https://github.com/AOSPA/manifest -b nougat-mr2
            echo -e '\e[32mRepo ready to go\e[0m' 
exit
