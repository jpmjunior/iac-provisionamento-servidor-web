#!/bin/bash

# Este script coloca em produção um um projeto HTML em um servidor
# Apache instalado no Linux Ubuntu

echo "Atualizando sistema e instalando pacotes..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Removendo pagina inicial do apache..."
rm /var/www/html/index.html

echo "Baixando projeto e colocando em produção..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp * /var/www/html -r

echo "Excluindo arquivos temporários..."
cd /tmp
rm main.zip
rm -r linux-site-dio-main