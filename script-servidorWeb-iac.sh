#!/bin/bash

echo "Atualizar servidor!!!"
apt update && apt upgrade -y

echo "Instalar Aplicações!!!"
echo "Apache2!"
apt install apache2 -y

echo "Unzip!"
apt install unzip -y

echo "Baixando aplicação do GitHub no diretório tmp!!!"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp


echo "Descopactando arquivo .zip!!!"
unzip /tmp/main.zip -d /tmp/


echo "Limpando a pasta padrão do Apache!!!"
rm -rf /var/www/html/*


echo "Copiando arquivos para pasta do Apache2!!!"
cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Alterar owner para usuário do Apache!!!"
chown -R www-data:www-data /var/www/html/

echo "Script Finalizado com Sucesso!!!"
