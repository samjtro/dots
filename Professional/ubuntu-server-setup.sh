#!/bin/bash
read -p "Username:  " user
if [ ! user = "no" ]; then
        adduser $user && usermod -aG sudo $user
fi
sudo bash -c "ufw allow OpenSSH && ufw enable"
ufw status
sudo bash -c "apt-get update && apt-get upgrade && apt-get install vim sudo curl git golang-go build-essentials"
sudo reboot