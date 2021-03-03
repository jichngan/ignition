#!/bin/bash

# Define colors...
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}

# Testing if root...
if [ $UID -ne 0 ]
then
	RED "You must run this script as root!" && echo
	exit
fi

BLUE "Updating repositories..."
sudo apt update

BLUE "Installing git..."
sudo apt install -y git

BLUE "Installing task..."
sudo apt-get install -y taskwarrior

BLUE "Installing Python2..."
sudo apt install -y python2

BLUE "Installing pip3..."
sudo apt-get install -y python3-pip

BLUE "Installing guake..."
sudo apt-get install -y guake

BLUE "Installing openvpn..."
sudo apt-get install -y openvpn

BLUE "Installing nmap..."
sudo apt-get install -y nmap

BLUE "Installing curl..."
sudo apt-get install -y curl

#BLUE "Installing Pip using downgrade"
#curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
#sudo python3 get-pip.py

BLUE "Installing Java and Javac..."
sudo apt install -y default-jre
sudo apt install -y default-jdk

BLUE "Installing exiftool..."
sudo apt-get install -y exiftool

BLUE "Installing Python PIL..."
sudo apt-get install -y python-pil

BLUE "Installing sqlitebrowser..."
sudo apt-get install -y sqlitebrowser

BLUE "Installing Wireshark..."
sudo apt-get install -y wireshark

BLUE "Installing python-requests..."
pip install requests

BLUE "Installing idle..."
sudo apt install -y idle

BLUE "Installing Python flask..."
sudo pip3 install flask

BLUE "Installing Python flask-login..."
sudo pip3 install flask-login

BLUE "Installing Python colorama..."
sudo pip3 install colorama

BLUE "Installing Python passlib..."
sudo pip3 install passlib

BLUE "Installing Binwalk..."
sudo apt install -y binwalk

BLUE "Installing Tesseract..."
sudo apt install -y tesseract-ocr

BLUE "Installing foremost..."
sudo apt install -y foremost

BLUE "Installing rot13..."
sudo apt install -y bsdgames	

BLUE "Installing hexedit..."
sudo apt install -y hexedit	

BLUE "Installing Python pwntools..."
sudo pip3 install pwntools

BLUE "Installing Go..."
sudo apt install -y golang-go
BLUE "Adding GOPATH and GOBIN to .bashrc, so future installs are easy.."
grep "export GOPATH" ~/.bashrc
if [ $? -eq 1 ]
then
	echo "export GOPATH=\$HOME/.go/" >> ~/.bashrc
fi
grep "export GOBIN" ~/.bashrc
if [ $? -eq 1 ]
then
	echo "export GOBIN=\$HOME/.go/bin" >> ~/.bashrc
	echo "export PATH=\$PATH:\$GOBIN" >> ~/.bashrc
fi

BLUE "Installing sqlite..."
sudo apt install -y sqlite	

BLUE "Installing nikto..."
sudo apt install -y nikto

BLUE "Installing GoBuster..."
sudo apt install -y gobuster

BLUE "Installing zbarimg..."
sudo apt install -y zbar-tools	

BLUE "Installing qrencode..."
sudo apt install -y qrencode

BLUE "Installing pdfcrack..."
sudo apt install -y pdfcrack

BLUE "Downloading stegsolve.jar..."
wget "http://www.caesum.com/handbook/Stegsolve.jar" -O "stegsolve.jar"
chmod +x "stegsolve.jar"

BLUE "Installing fcrackzip..."
sudo apt install -y fcrackzip

BLUE "Installing unrar..."
sudo apt install -y unrar

BLUE "Installing steghide..."
sudo apt install -y steghide

BLUE "Installing ffmpeg..."
sudo apt install -y ffmpeg

BLUE "Installing Python library netifaces..."
sudo pip3 install netifaces

BLUE "Installing Python library iptools..."
sudo pip3 install iptools

BLUE "Installing Python library OpenSSL..."
sudo pip3 install pyopenssl

BLUE "Installing Python library pydispatch..."
sudo pip3 install pydispatch

BLUE "Installing GIMP..."
sudo apt install -y gimp

BLUE "Installing cmake..."
sudo apt install -y cmake

BLUE "Installing mplayer..."
sudo apt install -y mplayer

BLUE "Installing sshpass..."
sudo apt install -y sshpass

BLUE "Installing tcpflow..."
sudo apt install -y tcpflow

BLUE "Installing Python scapy..."
sudo pip3 install scapy

BLUE "Git Cloning DirBuster Wordlist..."
git clone "https://github.com/daviddias/node-dirbuster.git"

BLUE "Installing Vim..."
sudo apt install -y vim

