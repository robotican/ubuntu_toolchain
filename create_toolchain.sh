#!/bin/bash

sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get install -f
sudo dpkg -i files/google-chrome-stable_current_amd64.deb
sudo apt-get -y install kate
sudo apt-get -y install terminator
sudo apt-get -y install git

gsettings set org.gnome.desktop.session idle-delay 0
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
gsettings set org.gnome.desktop.lockdown disable-lock-screen 'true'
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-capture-mouse false

sudo cat ~/.bashrc | sed -e "s/#force_color_prompt=yes/force_color_prompt=yes/" > ~/temp
mv temp .bashrc

