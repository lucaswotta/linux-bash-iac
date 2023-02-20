#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Carlos" -s /bin/bash -m -p $(echo "Senha123" |openssl passwd -1 -stdin) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(echo "Senha123" |openssl passwd -1 -stdin) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(echo "Senha123" |openssl passwd -1 -stdin) -G GRP_ADM

useradd debora -c "Débora" -s /bin/bash -m -p $(echo "Senha123" |openssl passwd -1 -stdin) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(echo "Senha123" |openssl passwd -1 -stdin) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(echo "Senha123" |openssl passwd -1 -stdin) -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(echo "Senha123" |openssl passwd -1 -stdin) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(echo "Senha123" |openssl passwd -1 -stdin) -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(echo "Senha123" |openssl passwd -1 -stdin) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim..."
