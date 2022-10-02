#!/bin/sh

### ZSH
sudo apt install build-essential -y
sudo apt install zsh -y

### Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

### Atualizar arquivo de configuração ZSH
source ~/.zshrc

### Plank
sudo apt-get install plank -y
