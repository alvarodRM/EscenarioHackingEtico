#!/bin/bash

cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
INICIO INSTALACION (1/2) VM5:  (Client2-RedPruebas-RedPreProduccion)             
EOF


# Actualizamos todos los paquetes
cat << "EOF"
Actualizamos todos los paquetes
EOF
sudo apt-get update -y
sudo apt-get upgrade -y


# Instalamos Ansible
cat << "EOF"
Instalamos Ansible
EOF
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y


# Instalamos sshpass
cat << "EOF"
Instalamos sshpass
EOF
sudo apt-get install sshpass -y


# Deshabilitamos host_key_checking en ansible.cfg
cat << "EOF"
Deshabilitamos host_key_checking en ansible.cfg
EOF
sudo sed -i 's/#host_key_checking = False/host_key_checking = False/' /etc/ansible/ansible.cfg


cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
FIN INSTALACION (1/2) VM5: ubuntu/trusty64  (Client2-RedPruebas-RedPreProduccion)            
EOF


