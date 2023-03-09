#!/bin/bash

echo "--------Criando diretórios de setores------------"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "-------Criando grupos de usuarios----------------"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "-------------Criando usuarios no sistema-Administração---------"
useradd carlos -c "ADMINISTRACAO" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "ADMINISTRACAO" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "ADMINISTRACAO" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

echo "-------------Criando usuarios no sistema-Vendas---------"
useradd debora -c "VENDAS" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "VENDAS" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "VENDAS" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

echo "-------------Criando usuarios no sistema-Sec--------"
useradd josefina -c "SEC" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "SEC" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "SEC" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "----------Definição de permissões aos grupos----------------"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
