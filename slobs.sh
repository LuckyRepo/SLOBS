#/bin/bash
	echo -e '\e[104mSuper Lazy Open Build Script v1.0.0\e[0m'
# Assign the build path on launch
	line=$(head -n 1 buildpath.txt)
	cd $line
# Create a Main Menu with actions
	PS3='Please enter your choice: '
	options=("Build Menu" "Check for updates" "Setup" "Quit")
	select opt in "${options[@]}"
	do
    case $opt in

        "Build Menu")
        echo -e '\e[32mLaunching Build Menu\e[0m'
        sleep 1
        clear
			./core/menu.sh
			exit
            ;;
            
        "Check for updates")
        echo -e '\e[32mLaunching the updater script\e[0m'
        sleep 1
        clear
            ./core/update.sh
            exit
            ;;
        "Setup")
# Delete buildpath.txt to avoid errors
        rm -rf buildpath.txt
        echo -e '\e[96mSetting up SLOBS. Deleted buildpath.txt\e[0m'
# Assign the build path
    		read -p "Enter your build path: " buildpath
    		echo $buildpath >> buildpath.txt
        echo -e '\e[96mStored build path. Your settings are saved.\e[0m'
        echo -e '\e[91mSLOBS is now auto shutting down. Relaunch to see settings applied.\e[0m'	
# Shutdown to avoid errors
    		sleep 1
    		exit
			;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
exit
