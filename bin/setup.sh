#!/bin/bash

#TODO add "Are you sure" check before deting files

# link bashrc and bash_aliases
rm ~/.bash_aliases ~/.bashrc
ln ~/conf/.bash_aliases ~/
ln ~/conf/.bashrc ~/

# link git files
rm ~/.gitconfig
ln ~/conf/.gitconfig ~/

# link vim files
rm ~/.vimrc
rm -rf ~/.vim
ln ~/conf/.vimrc ~/
ln -s ~/conf/.vim ~/

# link tmux files and download tmux-resurrect
rm ~/.tmux.conf
ln ~/conf/.tmux.conf ~/
mkdir -p ~/packages
git clone https://github.com/tmux-plugins/tmux-resurrect ~/packages/tmux-resurrect

# load gnome-terminal profiles into dconf
#dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < Red.dconf


#############
# Unity setup
#############

# set wallpaper
#gsettings set org.gnome.desktop.background picture-uri file:/home/$(whoami)/conf/wallpapers/brooklyn_red_cityscape-other.jpg


###############
# Awesome setup
###############

# install awesome and a compositing manager
sudo apt update
sudo apt install xcompmgr awesome
rm ~/.xprofile
ln -s ~/conf/.xprofile ~/.xprofile

# copy awesome config files
sudo cp -r ~/conf/redferg /usr/share/awesome/themes
sudo ln -fs ~/conf/rc.lua /etc/xdg/awesome/rc.lua


# restart Xorg server
sudo pkill X
