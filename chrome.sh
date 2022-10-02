#!/bin/sh

# Downlaod
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Instalar
sudo apt install ./google-chrome-stable_current_amd64.deb

# Remover download
rm ./google-chrome-stable_current_amd64.deb
