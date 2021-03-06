#/bin/bash
		clear
		echo -e '\e[104mBuild and Sync Script v0.9.6e for SLOBS\e[0m'
		echo -e '\e[91mThis build still contains test code. Not for daily use. Devs and testers Only.\e[0m'
		cd ~/build/SLOBS
		PATH=~/bin:$PATH
		echo -e '\e[96mHelper Bot just changed BIN Path to current folder to allow for Repo commands\e[0m'
	# Create a main menu with actions
		echo -e '\e[32mOffering choices to either Sync, Build or Quit\e[0m'
		PS3='Please enter your choice: '
		options=("Sync A Repo" "Build SLOBS" "Auto Sync and Build" "Build from Lunch" "Initialize Repo" "Set Jack Server" "Quit")
		select opt in "${options[@]}"
	do
	    case $opt in
	        "Sync Repo")
	            echo -e '\e[104mYou chose to sync\e[0m'
	            sleep 1
			./syncrepo.sh
				echo -e '\e[32mSync finished\e[0m'
	# Edit version.mk to use SLOBS version instead of Derp
		sed -i '20s/.*/SLOBS_BUILDTYPE ?= SLOBS/' /root/build/SLOBS/vendor/SLOBS/config/version.mk
	            ;;
	        "Build SLOBS")
	            echo -e '\e[104mYou are about to build SLOBS\e[0m'
			cd ~/build/SLOBS
			./slobsbuild.sh
		    pause 1
	            exit
	            ;;
	        "Auto Sync and Build")
			./autobuild.sh
	            exit
	            ;;
	        "Initialize Repo")
	            echo -e '\e[104mYou are about to Initialize SLOBS\e[0m'
	            sleep 1
		    echo -e '\e[91mPress any key to confirm you want to Initialize SLOBS\e[0m'
		    read -n 1 -s
	            echo -e '\e[32mSetting nougat-mr2 as your branch. You can not currently change this.\e[0m'
	            repo init -u ssh://git@github.com/SLOBS/platform_manifest.git -b nougat-mr2
	            echo -e '\e[32mRepo ready to go\e[0m' 


	            continue
	            ;;
	       "Set Jack Server")
		    export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx6g"
	            echo -e '\e[32mSet Jack Server VM Argument to 6g\e[0m' 


	            continue
	            ;;
		    
		    
	        "Quit")
	            break
	            ;;
	        *) echo invalid option;;
	    esac
	done
