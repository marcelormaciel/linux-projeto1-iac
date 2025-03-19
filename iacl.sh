#!/bin/bash
#=====================================
# Marcelo de Rezende Maciel
# https://github.com/marcelormaciel
# 19/03/2025
# script deve ser executado como root
#=====================================

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e atribuindo aos grupos correspondentes..."
#GRP_ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
#GRP_VEN
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
#GRP_SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Atribuindo grupos aos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Ajustando as permissões dos diretórios..."
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizou o script..."
