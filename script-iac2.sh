#!/bin/bash

echo "**************REALIZANDO UPDATE DE FERRAMENTAS**********"
apt-get update

echo "**************VERIFICANDO A ATUALIZANDO O SISTEMA OPERACIONAL************"
apt upgrade -y

echo "**************INSTALAÇÃO DO APACHE2*************************"
apt-get install apache2 -y

echo "**************INSTALAÇAO DO UNZIP***************************"
apt-get install unzip -y

echo "*************BAIXANDO E COPIANDO OS ARQUIVOS DA APLICAÇÃO*********"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html
echo "**************FINALIZADO A ATUALIZAÇÃO E FIM DO SCRIPT****************"
