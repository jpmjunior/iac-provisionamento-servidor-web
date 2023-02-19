#!/bin/bash

# Este script coloca em produção um um projeto HTML em um servidor
# Apache instalado no Linux Ubuntu

echo -e "###\nAtualizando sistema e instalando pacotes...\n###"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo -e "###\nRemovendo pagina inicial do apache...\n###"
rm /var/www/html/index.html

echo -e "###\nBaixando projeto e colocando em produção...\n###"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp * /var/www/html -r

echo -e "###\nExcluindo arquivos temporários...\n###"
cd /tmp
rm main.zip
rm -r linux-site-dio-main