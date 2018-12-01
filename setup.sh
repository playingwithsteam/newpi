# First: Get ready
apt-get update; apt-get -y install wget
# Then speed things up
mkdir /root/setup; cd /root/setup
wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/config.txt
cp /boot/config.txt /root/config.txt-old
rm /boot/config.txt; cp /root/setup/config.txt /boot/
# Grab the other scripts
wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/runonce.sh
wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/apps.sh
#ChMOD - "Because duh"
chmod 777 /root/setup/*
# Set to continue and reboot *ONLY RUN "runonce.sh" ONCE!*
# Nope, this nonsense is too sloppy:
#sudo echo "/root/setup/runonce.sh" >> /etc/rc.local
sudo reboot
