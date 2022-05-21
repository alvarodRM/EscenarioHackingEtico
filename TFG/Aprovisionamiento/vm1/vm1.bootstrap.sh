#!/bin/bash

cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
INICIO INSTALACION VM1: KaliLinux (ATACANTE)          
EOF


# Actualizamos paquetes
cat << "EOF"
Actualizamos paquetes
EOF
sudo apt-get update


# Descargamos nmap herramienta de escaneo.
cat << "EOF"
Descargamos nmap herramienta de escaneo.
EOF
sudo apt-get install -y nmap


# Cambiamos el modelo de teclado empleado.
cat << "EOF"
Cambiamos el modelo de teclado empleado.
EOF
sudo apt-get install console-data -y
sudo setxkbmap -layout 'es,es' -model pc105


# Actualizamos paquetes
cat << "EOF"
Actualizamos paquetes
EOF
sudo apt update -y
sudo apt upgrade -y


# Instalamos Ansible
cat << "EOF"
Instalamos Ansible
EOF
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y
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
FIN INSTALACION VM1: KaliLinux (ATACANTE)         
EOF