#!/usr/bin/env bash
sudo apt update
sudo apt upgrade

sudo apt install curl
curl https://dl.brave.com/install.sh | bash

wget -qO - https://dl.xanmod.org/archive.key | sudo gpg --dearmor -vo /etc/apt/keyrings/xanmod-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/xanmod-archive-keyring.gpg] http://deb.xanmod.org $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/xanmod-release.list
sudo apt update && sudo apt install linux-xanmod-x64v3

sudo apt install btop python3 idle tlp xournal easyeffects pavucontrol
sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

sudo adduser $USER libvirt
sudo adduser $USER kvm

sudo systemctl enable --now libvirtd
sudo systemctl enable --now tlp

echo
echo
echo 'REBOOT YOUR SYSTEM NOW!'
