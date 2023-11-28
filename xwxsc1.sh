wget -O google.deb "https://www.dropbox.com/scl/fi/srsllbzeb2ili57kud8ox/google-chrome-stable_current_amd64.deb?rlkey=ezhrrllcb1fm69rpqb0v8agdt&raw=1"
wait # Esperar o download ser concluído
dpkg -i google.deb
echo 'Instalado com Sucesso!'
cd BOT && sh ligar.sh
