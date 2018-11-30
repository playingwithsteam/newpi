# First: Get ready
apt-get update; apt-get -y install wget

mkdir setup; cd setup
sudo wget http://playingwithsteam.com/newpi/config.txt
sudo cp /boot/config.txt /root/setup/config.txt-old
sudo rm /boot/config.txt; cp config.txt /boot/
sudo wget http://playingwithsteam.com/newpi/runonce.sh
sudo wget http://playingwithsteam.com/newpi/apps.sh
sudo echo "sh /root/setup/runonce.sh" > /etc/init.d/rc.local
sudo reboot
