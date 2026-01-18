#!/bin/bash

#Script made by Andre Flores on 9/9/2025
#Last edited: 11/25/2025
#This script is used to configure my bash environment to my liking
# this assumes it comes zipped with my conf files 

# check for teminator install script, if exists, run it
if [ -f "terminatorInstall.sh" ]
then
    ./terminatorInstall.sh
fi

#install tools I use
sudo apt install tree htop tldr 

#NOTE: This script is assuming it came with a tmuxConf.txt file for .tmux.conf
# and vimconf.txt for .vimrc
# and that they are in the same directory as this script.
#   these are the configurations for tmux and vim respecitively and contain the
#   settings I like to use

#move and set up conf files
# will need to source inside of tmux to apply these settings
# via CTL + B :source ~/.tmux.conf
cp ./tmuxConf.txt ~/.tmux.conf

# will need to source inside of vim to apply these settings
# via :source ~/.vimrc (from the vim editor)
cp ./vimconf.txt ~/.vimrc

# set up ~/scripts to be added to our path everytime we log in so we can use these
# scripts with no need to ./ or type python in front of it
# add these 2 lines below to the ~/.bashrc file
echo "# make my scripts usable for everyone, located in ~/scripts
export PATH=\"\$HOME/scripts/:\$PATH\"" >> ~/.bashrc
source ~/.bashrc