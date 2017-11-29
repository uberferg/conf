#!/bin/bash
#
# file: post_install.sh
# author: Ferg
# description: Sets up a fresh Ubuntu install with my preferred programs and settings


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
