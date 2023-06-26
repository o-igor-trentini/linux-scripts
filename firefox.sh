# Remover o Firefox da Snap
sudo snap remove firefox

# Adicionar repositório
sudo add-apt-repository ppa:mozillateam/ppa

# Alterar prioridade do Firefox
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox

# Atualizar automáticamente
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox

# Instalar Firefox
sudo apt install firefox

