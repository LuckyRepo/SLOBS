#/bin/bash
# Set bin path to avoid issues	
	PATH=~/bin:$PATH
# Usual blah blah blah
echo -e '\e[91mThis build still contains test code. Not for daily use. Devs Only.\e[0m'
echo -e '\e[104mStarting Updater v1.0.0\e[0m'
		cd SLOBS
		echo -e '\e[96mHelper Bot just changed to Bot folder for updating the script\e[0m'
		sleep 1
			if git pull | grep -q 'Already up-to-date.'; then
  			echo -e '\e[91mThere where no changes detected. You should have the latest script.\e[0m'
  			echo -e '\e[96mHelp Bot Updater will now exit.\e[0m'
  		exit
			fi
		echo -e '\e[96mHelper Bot pulled git update\e[0m'
		sleep 1
		cd $OLDPWD
#
#Need to fix. Old version here. Not compatible.
#
#Helper Bot Move
			if mv SLOBS/aosip.sh $PWD | grep -q "mv: cannot stat 'SLOBS/aosip.sh': No such file or directory"; then
  			echo -e '\e[91mHelper Script did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mHelper Script Updated.\e[0m'
			fi
#Updater Script Move
			if mv SLOBS/update.sh $PWD | grep -q "mv: cannot stat 'SLOBS/update_AHS.sh': No such file or directory"; then
  			echo -e '\e[91mUpdater Script did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mUpdater Script Updated.\e[0m'
			fi
#SLOBS Move
			if mv SLOBS/build.sh /root | grep -q "mv: cannot stat 'SLOBS/build.sh': No such file or directory"; then
  			echo -e '\e[91mSLOBS did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mSLOBS Updated.\e[0m'
			fi
#Setup Script Move
			if mv SLOBS/start.sh $PWD | grep -q "mv: cannot stat 'SLOBS/start.sh': No such file or directory"; then
  			echo -e '\e[91mSetup Script did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mSetup Script Updated.\e[0m'
			fi
# Change Permissions
		chmod 777 menu.sh
		chmod 777 /root/build.sh
		chmod 777 update.sh
		echo -e '\e[96mScript Updated. Press any key to quit.\e[0m'
		read -n 1 -s
	exit
