sudo sed '$d' /etc/init.d/rc.local
sudo apt-get update; sudo apt-get -y upgrade; sudo apt-get -y autoremove; sudo apt-get clean; sudo rpi-update

sudo sed '$d' /etc/init.d/rc.local

sudo /root/setup/apps.sh
sudo reboot
