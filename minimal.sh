#!/bin/sh
# Install some goodies!
echo "[ENTER] to continue: Installing goodies! Find a healthy snack, this will take a few."
sudo apt-get -y install filezilla inkscape whois jwhois dnsutils rblcheck gelemental cups-client calibre htop screen cups
#sudo apt-get -y install junior-art junior-doc junior-games-arcade junior-games-card junior-games-puzzle junior-games-sim junior-internet junior-math junior-programming junior-system junior-toys junior-typing junior-writing qmmp cherrytree
sudo apt-get -y remove abiword
sudo apt-get -y install libreoffice qmmp cherrytree geary
sudo apt-get -y autoremove; sudo apt-get clean
# Installing junior packages + you may want to include "Calligra" as an alternate or additional office productivity package.
# Preperation for printing access.
sudo usermod -a -G lpadmin pi
# Woo! start over on a fresh boot!
echo "[ENTER] to continue: Now we'll update, and tidy up followed by a quick, final reboot. Have a lot of fun!"
sudo apt-get update; sudo apt-get -y upgrade; sudo apt-get -y autoremove; sudo apt-get clean
sudo reboot
