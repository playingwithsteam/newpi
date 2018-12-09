#!/bin/sh
echo "[ENTER] to continue: Updating the software database and install a little tool... (wget)"
# First: Get ready
apt-get update; apt-get -y install wget
# Then speed things up
echo "[ENTER] to continue: Let's back up the main RasPi config and replace it."
mkdir /root/setup; cd /root/setup
wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/config.txt
cp /boot/config.txt /root/config.txt-old
rm /boot/config.txt; cp /root/setup/config.txt /boot/
echo "[ENTER] to continue: Now overscan is off, card reader is overlocked. Downloading other scripts."
# Grab the other scripts
wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/runonce.sh
wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/apps.sh
#ChMOD - "Because duh"
chmod 777 /root/setup/*.sh
echo "[ENTER] to continue: Time to reboot. Execute /root/setup/runonce.sh after, to get fully updated and then reboot again"
sudo reboot
