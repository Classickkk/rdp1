# Use a imagem base
FROM thuonghai2711/nomachine-ubuntu-desktop:windows10

# Configurar variáveis de ambiente
ENV PASSWORD=123456
ENV USER=user

# Adicionar a capacidade SYS_PTRACE
RUN --cap-add=SYS_PTRACE

# Configurar o tamanho do espaço compartilhado
RUN --shm-size=1g

# Expor a porta 4000
EXPOSE 4000

# Iniciar o contêiner em modo detached
CMD ["docker", "run", "-d", "--network", "host", "--privileged", "--name", "nomachine-xfce4", "-e", "PASSWORD=${PASSWORD}", "-e", "USER=${USER}"]
