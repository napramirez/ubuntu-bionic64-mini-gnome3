#!/bin/bash
#

echo "
[SeatDefaults]
autologin-user=ubuntu
" > /etc/lightdm/lightdm.conf.d/autologin.conf

apt-get update
apt-get install -y --no-install-recommends ubuntu-desktop gnome-keyring gedit gnome-terminal indicator-session unity-lens-applications

echo "ubuntu:ubuntu" | chpasswd

systemctl reboot
