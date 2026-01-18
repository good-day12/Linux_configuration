#!/bin/bash

#install terminator
sudo apt install terminator

#install color schemes from this repo: https://github.com/EliverLara/terminator-themes
#1. Install the requests python package
pip install requests
#Note: If you're using python 3, ignore the previous command and install the python2-requests package for your specific OS.

#2. Create plugins directory if it does not exist
mkdir -p $HOME/.config/terminator/plugins

#3. Getting the correct plugin
#For terminator >= 1.9
wget https://git.io/v5Zww -O $HOME"/.config/terminator/plugins/terminator-themes.py"

# For terminator < 1.9
# wget https://git.io/v5Zwz -O $HOME"/.config/terminator/plugins/terminator-themes.py"

# 4. Activation
# Check the TerminatorThemes option under terminator > preferences > plugins.
# Usage
# Open the terminator context menu and select Themes.
# Select you favorite theme and click install (you can preview available themes before installing).
# Enjoy! 😃