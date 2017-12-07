#!/bin/bash

#TODO add "Are you sure" check before deting files

# Update package lists
sudo apt update


# Install general utilities
sudo apt install --assume-yes rxvt-unicode vim tmux git curl htop bmon firefox


# Install Google Chrome
## 1. Download the Chrome Debian package
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > ~/Downloads/google-chrome-stable_current_amd64.deb 

## 2. Install the package
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb

## 3. Fix broken dependencies
sudo apt install --assume-yes -f

## 4. Delete deb package
rm ~/Downloads/google-chrome-stable_current_amd64.deb


# Install Spotify for Linux
## 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410

## 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

## 3. Update list of available packages
sudo apt-get update

## 4. Install Spotify
sudo apt-get install --assume-yes spotify-client


################################
# Set up development environment
###############################
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

# install urxvt and link Xresources file (color scheme for urxvt)
sudo apt update
sudo apt install rxvt-unicode
ln -f ~/conf/.Xresources ~/.Xresources
xrdb ~/.Xresources


#############
# Unity setup
#############
# set wallpaper
gsettings set org.gnome.desktop.background picture-uri file:/home/$(whoami)/conf/wallpapers/brooklyn_red_cityscape-other.jpg

# load gnome-terminal profiles into dconf
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < Red.dconf


###############
# Awesome setup
###############
## install awesome and a compositing manager
#sudo apt install xcompmgr awesome
#ln -f ~/conf/.xprofile ~/.xprofile
#
## copy awesome config files
#sudo cp -r ~/conf/redferg /usr/share/awesome/themes
#sudo ln -f ~/conf/rc.lua ~/.config/awesome/rc.lua


# restart Xorg server
sudo pkill X
