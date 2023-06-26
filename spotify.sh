# Adicionar repositório
wget -O- https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
sudo add-apt-repository "deb http://repository.spotify.com stable non-free"


# Instalar
sudo apt install spotify-client

