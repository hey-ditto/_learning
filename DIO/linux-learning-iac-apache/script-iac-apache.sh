#!/bin/bash

# Atualizar o sistema
echo "Atualizando o sistema..."
apt-get update -y
apt-get upgrade -y
echo "Sistema atualizado."

# Instalação dos aplicativos-chave
echo "instalando..."
apt-get install apache2 -y
apt-get install unzip -y
echo "instalado."

# Criação do repositório e cópia no apache
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
