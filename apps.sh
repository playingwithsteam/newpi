# Install some goodies!
apt-get update; sudo apt-get -y upgrade; sudo apt-get -y autoremove; sudo apt-get clean; sudo rpi-update
apt-get -y install filezilla blender gimp inkscape dbmix whois jwhois dnsutils rblcheck gelemental cups-client calibre htop screen calligra
# Double check if the above "calligra" installs Krita and Karbon
# Update again, maybe it's OCD?
sudo apt-get -y update; sudo apt-get -y upgrade; sudo apt-get -y autoremove; sudo apt-get clean
sudo rpi-update

# Woo! start over on a fresh boot!
sudo reboot
