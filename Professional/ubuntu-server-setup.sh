#!/bin/bash
read -p "Username:  " user
adduser $user && usermod -aG sudo $user
ufw allow OpenSSH && ufw enable && ufw status
echo 'Reboot into $user'