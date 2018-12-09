# newpi
Super rough draft of quick tuning and preparation of a new RPI3B+

The idea of the scripts is, to assume you're on a Raspberry Pi 3 B+ and using a good quality high speed memory card that can handle overclocking.

This overclocks the card reader, turns off overscan by backing up and replacing the /boot/config.txt then reboots, runs updates, installs some Debian Junior packages, etc.

This stuff could technically ruin everything so I'd suggest nobody try using it. ;)

If you do, make sure you have backups. Make sure your memory card can handle it. In theory it's possible to ruin cheaper memory cards though.

This is part of a set of mainly personal use scripts for me, setting up Pis especially for younger folks.

This set of scripts, for now needs to be run manually. One handy way of doing that is, while logged in as root:

curl https://playingwithsteam.com/newpi/ | bash

Once the reboot is done, run: /root/setup/runonce.sh and apps.sh

Will need to add bookmarks including: http://localhost:631 for printer setup and management. Making sure to allow user "pi" to print.

***Current config removes Abiword and installs LibreOffice***

Problem: A) Abiword seems visually buggy. Visually. B) Office app selection seems limited. C) You need Calligra for Krita, the photoshop alternative. C1) Calligra may cause java dependency issues, possibly resulting in upgrade/update issues?

Solutions: 1) Remove Abiword. Install LibreOffice deal with GIMP or 2) Remove Abiword. Install Callira, gain benefit of Krita.

Bookmarks to add: Wikipedia, W3, PHP.net, Localhost:631 (cups),

Inspired in the process of starting up Playing with STEAM:
https://PlayingwithSTEAM.com - Coming soon!
