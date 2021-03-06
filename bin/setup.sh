#!/bin/bash

#TODO add "Are you sure" check before deting files

# link bashrc and bash_aliases
ln -f ~/conf/.bashrc ~/
ln -f ~/conf/.bash_aliases ~/

# link git files
ln -f ~/conf/.gitconfig ~/

# link vim files
ln -f ~/conf/.vimrc ~/
ln -fs ~/conf/.vim ~/

# link tmux files and download tmux-resurrect
ln -f ~/conf/.tmux.conf ~/
mkdir -p ~/packages
git clone https://github.com/tmux-plugins/tmux-resurrect ~/packages/tmux-resurrect


#############
# Unity setup
#############
# set wallpaper
#gsettings set org.gnome.desktop.background picture-uri file:/home/$(whoami)/conf/wallpapers/brooklyn_red_cityscape-other.jpg

# load gnome-terminal profiles into dconf
#dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < Red.dconf


###############
# Awesome setup
###############
# install urxvt and link Xresources file (color scheme for urxvt)
sudo apt update
sudo apt install rxvt-unicode
ln -f ~/.Xresources ~/

# install awesome and a compositing manager
sudo apt install xcompmgr awesome
ln -f ~/conf/.xprofile ~/.xprofile

# copy awesome config files
sudo cp -r ~/conf/redferg /usr/share/awesome/themes
sudo ln -f ~/conf/rc.lua ~/.config/awesome/


# restart Xorg server
sudo pkill X
