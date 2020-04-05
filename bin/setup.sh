#!/bin/bash

#TODO add "Are you sure" check before deting files

# Update package lists
sudo apt update

# Install general utilities
sudo apt install --assume-yes vim tmux curl htop bmon firefox


# Install Google Chrome
## 1. Download the Chrome Debian package
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > ~/Downloads/google-chrome-stable_current_amd64.deb 

## 2. Install the package
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb

## 3. Fix broken dependencies
sudo apt install --assume-yes -f

## 4. Delete deb package
rm ~/Downloads/google-chrome-stable_current_amd64.deb


# Install Spotify
sudo snap install spotify


# Install Slack
sudo snap install slack


##############################
# Development environment
##############################

# link bashrc and bash_aliases
ln -f ~/conf/.bashrc ~/.bashrc
ln -f ~/conf/.bash_aliases ~/.bash_aliases

# link git files
ln -f ~/conf/.gitconfig ~/.gitconfig

# link vim files
ln -f ~/conf/.vimrc ~/.vimrc
ln -fs ~/conf/.vim ~/.vim

# link tmux files and download tmux-resurrect
ln -f ~/conf/.tmux.conf ~/.tmux.conf
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
ln -f ~/conf/.Xresources ~/.Xresources

# install awesome and a compositing manager
sudo apt install xcompmgr awesome
ln -f ~/conf/.xprofile ~/.xprofile

# copy awesome config files
sudo cp -r ~/conf/redferg /usr/share/awesome/themes
mkdir -p ~/.config/awesome
ln -f ~/conf/rc.lua ~/.config/awesome/rc.lua


# restart computer
sudo reboot
