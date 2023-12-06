# Use a imagem base do Ubuntu
FROM ubuntu:latest

# Atualize e instale o xrdp e o xfce4 (ou outro ambiente desktop de sua escolha)
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y xrdp xfce4 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Configura o xrdp para usar a porta 3389
RUN sed -i 's/port=3389/port=3389/g' /etc/xrdp/xrdp.ini

# Exponha a porta 3389
EXPOSE 3389

# Inicie o xrdp quando o contêiner for iniciado
CMD ["xrdp", "--nodaemon"]
