# Use a imagem base
FROM thuonghai2711/nomachine-ubuntu-desktop:windows10

# Defina as variáveis de ambiente
ENV PASSWORD=123456
ENV USER=user

# Exponha a porta 4000
EXPOSE 4000
