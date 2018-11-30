# First: Get ready
apt-get update; apt-get -y install wget

mkdir setup; cd setup
sudo wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/config.txt
sudo cp /boot/config.txt /root/setup/config.txt-old
sudo rm /boot/config.txt; cp config.txt /boot/
sudo wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/runonce.sh
sudo wget https://raw.githubusercontent.com/playingwithsteam/newpi/master/apps.sh
sudo echo "sh /root/setup/runonce.sh" > /etc/init.d/rc.local
sudo reboot
