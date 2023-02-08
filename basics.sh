#!/bin/sh

### Drivers
sudo ubuntu-drivers autoinstall

### Gufw firewall
sudo apt install gufw -y

### Ubuntu Restricted Extras
# Suporte para:
# 	- Codecs de áudio e vídeo comuns
# 	- Fontes Microsoft TrueType
# 	- Unrar
sudo apt install ubuntu-restricted-extras -y

### Curl
sudo apt install curl -y

### Vim
sudo apt install vim -y
