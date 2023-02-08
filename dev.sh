#!/bin/sh

### Golang
# https://go.dev/dl/
# sudo rm -rf /usr/local/go
# sudo tar -C /usr/local -xzf go[version].linux-amd64.tar.gz
# sudo vim ~/.profile
# export PATH=$PATH:/usr/local/go/bin
# source ~/.profile


### NVM & node latest
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh
source ~/.zshrc
nvm install --lts
# nvm alist default <version>
npm install -g npm@latest
npm i -g yarn@latest

### Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce -y

# Verificar estado docker
# sudo systemctl status docker

# Executar sem SUDO
sudo usermod -aG docker ${USER}
su - ${USER}
sudo usermod -aG docker [usuário]

### Docker Compoe
sudo apt-get install docker-compose-plugin
