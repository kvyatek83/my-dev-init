#!/bin/bash
#Sojharo's Development Machine Setup on Ubuntu
#Author : Sojharo
#
#set software sources to server for united states
#VLC from software center
#virtual box from software center
#PDF Mod from software center
#shutter from software center
#kazam from software center
#install unity tweak tool from software center

sudo apt-get update
sudo apt-get install nodejs
sudo ln -s `which nodejs` /usr/local/bin/node
sudo apt-get install npm

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
sudo apt-get update
sudo apt-get install -y mongodb-org
service mongod status

sudo npm install forever -g

sudo apt-get update
sudo apt-get install git

sudo npm install -g grunt-cli

sudo npm install -g bower

sudo apt-get install vim curl python-software-properties

sudo apt-get install default-jre
sudo apt-get install default-jdk

sudo apt-get install gimp gimp-data gimp-plugin-registry gimp-data-extras

sudo apt-get install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller

sudo apt-get install filezilla

sudo apt-get remove laptop-mode-tools
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw smartmontools ethtool
sudo tlp start
sudo tlp stat


