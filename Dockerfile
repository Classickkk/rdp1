FROM ubuntu:22.04

# Atualiza os pacotes e instala dependências
RUN apt-get update && apt-get install -y \
    tmate \
    python3

# Executa comandos para criar e iniciar o script Python diretamente no Dockerfile
RUN echo "import subprocess\n\n" \
    "tmate_cmd = 'tmate -S /tmp/tmate.sock new-session -d'\n" \
    "subprocess.run(tmate_cmd, shell=True)" > /app/tmate_start.py

# Configura permissões para o script Python
RUN chmod +x /app/tmate_start.py

# Inicia o Tmate usando o script Python
CMD ["python3", "/app/tmate_start.py"]
