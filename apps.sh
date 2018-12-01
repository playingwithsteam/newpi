# Install some goodies!
sudo apt-get -y install filezilla blender gimp inkscape dbmix whois jwhois dnsutils rblcheck gelemental cups-client calibre htop screen

# Update again, maybe it's OCD?
sudo apt-get -y update; sudo apt-get -y upgrade; sudo apt-get -y autoremove; sudo apt-get clean
sudo rpi-update

# Woo! start over on a fresh boot!
sudo reboot
