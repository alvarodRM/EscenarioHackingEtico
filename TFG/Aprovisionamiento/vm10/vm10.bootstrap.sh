#!/bin/bash

cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
INICIO INSTALACION (1/2) VM10: bento/ubuntu-16.04  (DNSServer-RedProduccion)                      
EOF


# Actualizamos paquetes.
cat << "EOF"
Actualizamos paquetes.
EOF
sudo apt update -y
sudo apt upgrade -y


# Instalamos Ansible.
cat << "EOF"
Instalamos Ansible.
EOF
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
apt-get update -y
sudo apt-get install ansible -y


# Instalamos sshpass.
cat << "EOF"
Instalamos sshpass.
EOF
sudo apt-get install sshpass -y


# Deshabilitamos host_key_checking en ansible.cfg
cat << "EOF"
Deshabilitamos host_key_checking en ansible.cfg
EOF
sudo sed -i 's/#host_key_checking = False/host_key_checking = False/' /etc/ansible/ansible.cfg


# Rechazamos los warnings informativos de ansible.
cat << "EOF"
Rechazamos los warnings informativos de ansible.
EOF
sudo sed -i 'deprecation_warnings = False' /etc/ansible/ansible.cfg


# Aumentamos el tiempo de timeout en ansible.cfg
cat << "EOF"
Aumentamos el tiempo de timeout en ansible.cfg
EOF
sudo echo "timeout=30" >> /etc/ansible/ansible.cfg


cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
FIN INSTALACION (1/2) VM10: bento/ubuntu-16.04  (DNSServer-RedProduccion)                          
EOF