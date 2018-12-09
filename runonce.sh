#!/bin/sh
echo "[ENTER] to continue: This will take a few, getting fully updated."
sudo apt-get update; sudo apt-get -y upgrade; sudo apt-get -y autoremove; sudo apt-get clean; sudo rpi-update
echo "[ENTER] to continue: Let's reboot again so that all takes effect."
sudo reboot
