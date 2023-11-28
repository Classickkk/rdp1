#!/bin/bash

dpkg -i ./google.deb # Certifique-se de que o caminho para google.deb está correto
wait
clear
echo 'Instalado com Sucesso!'
sh ./BOT/ligar.sh # Certifique-se de que o caminho para ligar.sh está correto
