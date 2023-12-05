# Use a imagem base
FROM thuonghai2711/nomachine-ubuntu-desktop:windows10

# Configurar variáveis de ambiente
ENV PASSWORD=123456
ENV USER=user

# Adicionar a capacidade SYS_PTRACE
RUN apt-get update && apt-get install -y --no-install-recommends \
    && apt-get install -y libcap2-bin \
    && setcap cap_sys_ptrace=eip /usr/NX/bin/nxnode

# Configurar o tamanho do espaço compartilhado
CMD ["docker", "run", "-d", "--network", "host", "--privileged", "--name", "nomachine-xfce4", "-e", "PASSWORD=${PASSWORD}", "-e", "USER=${USER}", "--shm-size=1g"]

# Expor a porta 4000
EXPOSE 4000
