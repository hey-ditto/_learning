#!/bin/bash

# Criação das pastas
echo "### Gerando as pastas iniciais no root ###"
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Pastas criadas!"

# Os grupos para os usuários
echo "Iniciando a criação dos grupos para os usuários!!!"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos gerados!"

#  Criação dos usuários utilizando -m para criar pasta home e -s para utilizar o bash padronizado
echo "Criação dos usuários e separação em grupos em andamento...."
useradd carlos -c "Carlos Teves" -m -s /bin/bash -G GRP_ADM
echo "GRP_ADM -> carlos criado!"
useradd maria -c "Maria de Lurdes" -m -s /bin/bash -G GRP_ADM
echo "GRP_ADM -> maria criada!"
useradd joao -c "João da Silva" -m -s /bin/bash -G GRP_ADM
echo "GRP_ADM -> joao criado!"


useradd debora -c "Debora Tavares" -m -s /bin/bash -G GRP_VEN
echo "GRP_VEN -> debora criada!"
useradd sebastiana -c "Sebastiana Melo" -m -s /bin/bash -G GRP_VEN
echo "GRP_VEN -> sebastiana criada!"
useradd roberto -c "Roberto Leão" -m -s /bin/bash -G GRP_VEN
echo "GRP_VEN -> roberto criado!"

useradd josefina -c "Josefina Aparecida" -m -s /bin/bash -G GRP_SEC
echo "GRP_SEC -> josefina criada!"
useradd amanda -c "Amanda Byles" -m -s /bin/bash -G GRP_SEC
echo "GRP_SEC -> amanda criada!"
useradd rogerio -c "Rogério Trindade" -m -s /bin/bash -G GRP_SEC
echo "GRP_SEC -> rogerio criado!"

echo "."
echo "."
echo "."


# Definir senha para os usuários
echo "Configurando senhas..."
echo "carlos:Senha123" | sudo chpasswd
echo "maria:Senha123" | sudo chpasswd
echo "joao:Senha123" | sudo chpasswd
echo "debora:Senha123" | sudo chpasswd
echo "sebastiana:Senha123" | sudo chpasswd
echo "roberto:Senha123" | sudo chpasswd
echo "josefina:Senha123" | sudo chpasswd
echo "amanda:Senha123" | sudo chpasswd
echo "rogerio:Senha123" | sudo chpasswd

echo "Feito!"

# Permissões dos grupos
echo "Determinando permissões de cada grupo:"
echo "Permissão generalizada no diretório /publico!"

chown root:root /publico
chmod 777 /publico

echo "Feito!"

echo "Permissão do diretório /adm apenas para o GRUPO_ADM e seus integrantes!"

chmod 770 /adm/
chown root:GRP_ADM /adm/

echo "Feito!"

echo "Permissão do diretório /ven apenas para o GRUPO_VEN e seus integrantes!"

chmod 770 /ven/
chown root:GRP_VEN /ven/

echo "Feito!"

echo "Permissão do diretório /sec apenas para o GRUPO_SEC e seus integrantes!"

chmod 770 /sec/
chown root:GRP_SEC /sec/

echo "Feito!"


echo "end."


