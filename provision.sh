#!/bin/bash
#

apt-get update
apt-get install -y --no-install-recommends ubuntu-desktop gnome-keyring gedit gnome-terminal
echo "
[SeatDefaults]
autologin-user=ubuntu
" > /etc/lightdm/lightdm.conf.d/autologin.conf

echo "ubuntu:ubuntu" | chpasswd

systemctl reboot
