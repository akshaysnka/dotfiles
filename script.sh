#!/usr/bin/enb bash
sudo apt update
sudo apt upgrade

curl https://dl.brave.com/install.sh | bash

wget -qO - https://dl.xanmod.org/archive.key | sudo gpg --dearmor -vo /etc/apt/keyrings/xanmod-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/xanmod-archive-keyring.gpg] http://deb.xanmod.org $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/xanmod-release.list
sudo apt update && sudo apt install linux-xanmod-x64v3

sudo apt install btop python3 idle tlp

sudo systemctl enable --now tlp
