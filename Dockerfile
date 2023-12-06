# Use a imagem base do Ubuntu 22.04
FROM ubuntu:22.04

# Atualize o sistema e instale o tmate
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y tmate && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Execute o tmate quando o contêiner for iniciado
CMD ["tmate"]
