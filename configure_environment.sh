#!/bin/bash

#Script made by Andre Flores on 9/9/2025
#Last edited: 9/9/2025
#This script is used to configure my bash environment to my liking

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
# cp ./tmuxConf.txt ~/.tmux.conf
echo "# set bind keys like vim to move between panes

bind-key -n M-h select-pane -L

bind-key -n M-j select-pane -D

bind-key -n M-k select-pane -U

bind-key -n M-l select-pane -R

#bind zoom in key to alt z
bind-key -n M-z resize-pane -Z

#fix colorschemes in vim, in tmux
set -ga terminal-overrides \",*256col*:Tc\"
set -g default-terminal \"screen-256color\"

#dont forget to source in tmux
#press ctr+B, then :source ~/.tmux.conf" > ~/.tmux.conf

# will need to source inside of vim to apply these settings
# via :source ~/.vimrc (from the vim editor)
# cp ./vimconf.txt ~/.vimrc
echo "\"Turn syntax highlighting on
syntax on

\"Set colorscheme to murphy/synthwave84
colorscheme murphy

\"Show line numbers and relative numbers
set number relativenumber

\" Highlight cursor line and column
set cursorline cursorcolumn

\"Show the mode you are in on the last line
set showmode

\"Enable file type detection
filetype on

\"set line break so words don't break apart over lines
set linebreak

\"Set termguicolors so my synthwave colorscheme works
set termguicolors

\"Set auto indent so vim will follow my previous indententation
set autoindent

\"Set jj to escape from insert mode
inoremap jj <Esc>

\"Help fix the colorscheme inside of tmux
if exists('+termguicolors')
    let &t_8f = \"\<Esc>[38;2;%lu;%lu;%lum\"
    let &t_8b = \"\<Esc>[48;2;%lu;%lu;%lum\"
    set termguicolors
endif

\"     :source ~/.vimrc run this in vim to source file" > ~/.vimrc

# set up ~/scripts to be added to our path everytime we log in so we can use these
# scripts with no need to ./ or type python in front of it
# add these 2 lines below to the ~/.bashrc file
echo "# make my scripts usable for everyone, located in ~/scripts
export PATH=\"$HOME/scripts/:$PATH\"" >> ~/.bashrc