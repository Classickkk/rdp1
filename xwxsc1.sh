wget -O google.deb "https://www.dropbox.com/scl/fi/srsllbzeb2ili57kud8ox/google-chrome-stable_current_amd64.deb?rlkey=ezhrrllcb1fm69rpqb0v8agdt&raw=1"
wait 
dpkg -i ./google.deb
wait
clear
echo 'Instalado com Sucesso!'
sh ./BOT/ligar.sh
