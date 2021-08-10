#!/bin/bash
# Nutty's Development Machine Setup on Ubuntu
# Author : Nutty
#
# set software sources to server for united states
#
# For other software:
## VLC from software center
## virtual box from software center
## PDF Mod from software center
## shutter from software center
## kazam from software center
## install unity tweak tool from software center
## install rebar: pull from github (for building erlang applications)
## Learn from https://github.com/rafaelstz/simplesh



# Installing build essentials
#sudo apt-get install -y build-essential libssl-dev

# Guake
#sudo apt-get update
#sudo apt-get install guake

# Guake
function guake() {
	notify "Guake"
	sudo apt-get update
	sudo apt-get install guake
}

# GNOME Tweaks Tool
gnome_tweaks() {
	notify "GNOME Tweaks Tool"
	sudo apt-get update
	sudo apt install gnome-tweaks
}

# Enable Minimise on Click
function enable_minimize() {
	notify "Enable Minimise on Click"
	gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'ks
}

# Show battery percentage
show_battery_percentage() {
	notify "Show battery percentage"
	gsettings set org.gnome.desktop.interface show-battery-percentage true
}

# Media Codecs
function media_codecs() {
	notify "Media Codecs"
	sudo apt install ubuntu-restricted-extras
}

# Toilet and Lolcat
function toilet_and_lolcat() {
	notify "toilet and lolcat"
	sudo apt-get update
	sudo apt-get install lolcat
	sudo apt-get install toilet
}

# ddccontrol
function ddccontrol() {
	notify "ddccontrol"
	sudo apt install ddccontrol
}


# Install wget, unzip
#sudo apt-get install wget unzip

# Nodejs and NVM
#curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
#source ~/.profile
#sudo nvm install 7.10.0
#sudo nvm use 7.10.0
#node -v

# Angular 
#sudo npm install -g @angular/cli 
#ng version
function angular() {
	notify "Angular"
	sudo npm install -g @angular/cli 
	ng version
}

#nodemon
#sudo npm install -g nodemon
#sudo npm install -g loopback-cli
function nodemon() {
	notify "Nodemon"
	sudo npm install -g nodemon
	sudo npm install -g loopback-cli
}

# Mongodb, Installing and starting server
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
#echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
#sudo apt-get update
#sudo apt-get install -y mongodb-org
#sudo service mongod start
#sudo service mongod status
function mongodb() {
	notify "Mongodb"
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
	echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
	sudo apt-get update
	sudo apt-get install -y mongodb-org
	sudo service mongod start
	sudo service mongod status
}

# Forever to run nodejs scripts forever
#sudo npm install forever -g

# Git - a version control system
#sudo apt-get update
#sudo apt-get install -y git xclip

# maven 
#sudo apt-get install maven -y
function maven() {
	notify "Maven"
	sudo apt-get install maven -y
}

# Gulp - an automated task runner
#sudo npm install -g gulp-cli
function gulp() {
	notify "Angular"
	sudo npm install -g gulp-cli
}

# Angular FullStack - My favorite MEAN boilerplate (MEAN = MongoDB, Express, Angularjs, Nodejs)
#sudo npm install -g generator-angular-fullstack

# Vim, Curl, Python - Some random useful stuff
#sudo apt-get install -y vim curl
#sudo apt-get install python3-pip
#sudo apt-get install -y python-software-properties
#sudo apt-get install -y python-dev, python-pip
#sudo apt-get install -y libkrb5-dev

# Installing JDK and JRE
#sudo apt-get install -y default-jre
#sudo apt-get install -y default-jdk

# Gimp Image Editor
#sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

# Archive Extractors
#sudo apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller

# TLP - saves battery when Ubuntu is installed on Laptops
# sudo apt-get remove laptop-mode-tools
# sudo add-apt-repository ppa:linrunner/tlp
# sudo apt-get update
# sudo apt-get install -y tlp tlp-rdw smartmontools ethtool
# sudo tlp start
# sudo tlp stat

# Erlang - Actor Concurrency Model based Programming Language
# sudo apt-get install -y erlang

# Sticky Notes
#sudo apt-get install -y xpad

# KVM acceleration and cpu checker
# sudo apt-get install -y cpu-checker
# sudo apt-get install -y qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
# sudo apt-get install -y virt-manager
# sudo apt-get install -y lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# RPM and alien - sometimes used to install software packages
# sudo apt-get install -y rpm
# sudo apt-get install -y alien dpkg-dev debhelper

# Calibre - Ebook reader and converter
# sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

# Dictionary Client and Server with Thesaurus
#sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
#sudo apt-get install -y dict
#sudo apt-get install -y dictd
#sudo apt-get install -y dict-gcide
#sudo apt-get install -y dict-wn
#sudo apt-get install -y dict-devil
#sudo apt-get install -y dict-moby-thesaurus

# For Android Studio (Gradle Daemon)
#touch ~/.gradle/gradle.properties && echo "org.gradle.daemon=true" >> ~/.gradle/gradle.properties

# Zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Docker
#sh docker.sh
function docker() {
	notify "Docker"
	sh docker.sh
}
# Docker-compose
#sudo pip3 install docker-compose
function docker_compose() {
	notify "Docker-compose"
	sudo pip3 install docker-compose
}


# Atom 
#curl -L https://atom.io/download/deb -o atom-amd64.deb
#sudo dpkg -i atom-amd64.deb
#sudo apt-get -f install
# Nuclide
# apm install nuclide

notify() {
    local len=$((${#1}+2))
    printf "\n+"
    printf -- "-%.0s" $(seq 1 $len)
    printf "+\n| $1 |\n+"
    printf -- "-%.0s" $(seq 1 $len)
    printf "+\n\n"
}

sudo apt-get update
gnome_tweaks
show_battery_percentage
media_codecs
