#!/bin/bash
read -p "Public Key:  " pubkey
if [[ ! -d $HOME/.ssh ]]; then
	mkdir $HOME/.ssh
fi
touch $HOME/.ssh/authorized_keys
echo pubkey > $HOME/.ssh/authorized_keys