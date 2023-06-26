# Adicionar repositório
sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora

# Baixar instalador
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" -O firefox-developer.tar.bz2 -q

# Criar pasta
#DIR="/opt/firefox-developer/"
#if [ -d !  "$DIR" ]; then
#	sudo mkdir /opt/firefox-developer
#fi

# Descompactar
sudo tar -xf firefox-developer.tar.bz2 -C /opt/firefox-developer/

# Remover instalador
rm firefox-developer.tar.bz2

# Adicionar executável
echo 'exec /opt/firefox-developer/firefox/firefox "$@"' > /opt/firefox-developer/firefox-developer

# Adicionar ícone desktop
echo '[Desktop Entry]
Version=1.0
# NoDisplay=true
Encoding=UTF-8
GenericName=Web Browser
GenericName[pt_BR]=Navegador da Internet
Comment=Access the Internet
Name=Firefox Developer Edition
Comment=Navegador Web
Comment[pt_BR]=Acessar a internet
GenericName=Navegador Web
Exec=firefox-developer %u
# Terminal=false
# X-MultipleArgs=false
Icon=org.mozilla.FirefoxDevEdition
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-scheme-handler/http;x-scheme-handler/https;video/webm;application/x-xpinstall;
Type=Application
Categories=Network;WebBrowser
StartupNotify=true
# StartupWMClass=firefox-aurora
Actions=new-window;new-private-window;

[Desktop Action new-window]
Name=Abrir nova janela
Exec=/opt/firefox-developer/firefox/firefox -new-window

[Desktop Action new-private-window]
Name=Abrir nova janela privada
Exec=/opt/firefox-developer/firefox/firefox -private-window' > /usr/share/applications/firefox-developer.desktop

