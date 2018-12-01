# First: Get ready
apt-get update; apt-get -y install wget
# Then speed things up
mkdir /root/setup; cd /root/setup
sudo wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/config.txt
sudo cp /boot/config.txt /root/setup/config.txt-old
sudo rm /boot/config.txt; cp /root/setup/config.txt
# Grab the other scripts
sudo wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/runonce.sh
sudo wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/apps.sh
#ChMOD - "Because duh"
chmod 777 /root/setup/*
# Set to continue and reboot *ONLY RUN "runonce.sh" ONCE!*
sudo echo "/root/setup/runonce.sh" >> /etc/rc.local
sudo reboot
