#!/bin/bash

cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
INICIO INSTALACION (1/2) VM3: Ubuntu/Xenial64  (WebServer2-RedPruebas-JuicyShop)        
EOF


# Si hay un error se detendra la ejecución del aprovisionamiento
cat << "EOF"  
Si hay un error se detendra la ejecución del aprovisionamiento
EOF
set -e


# Añadimos la docker key y el repositorio
cat << "EOF"  
Añadimos la docker key y el repositorio
EOF
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9DC858229FC7DD38854AE2D88D81803C0EBFCD88
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable" | sudo tee /etc/apt/sources.list.d/docker.list


# Instalamos apache y docker.
cat << "EOF"  
Instalamos apache y docker.
EOF
apt-get update -q
apt-get upgrade -qy
apt-get install -qy apache2 docker-ce


# Copiamos algunos ficheros importantes.
cat << "EOF"  
Copiamos algunos ficheros importantes. 
EOF
cp /tmp/juice-shop/default.conf /etc/apache2/sites-available/000-default.conf


# Descargamos y ejecutamos la imágen de docker que contiene la Juice Shop.
cat << "EOF"  
Descargamos y ejecutamos la imágen de docker que contiene la Juice Shop.
EOF
docker run --restart=always -d -p 3000:3000 --name juice-shop bkimminich/juice-shop


# Habilitamos los módulos proxy en apache y reiniciamos el servicio.
cat << "EOF"  
Habilitamos los módulos proxy en apache y reiniciamos el servicio.
EOF
a2enmod proxy_http
systemctl restart apache2.service


# Instalamos Ansible.
cat << "EOF"  
Instalamos Ansible.
EOF
sudo apt update -y
sudo apt upgrade -y
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
apt-get update -y
sudo apt-get install ansible -y
sudo apt-get install sshpass -y


# Deshabilitamos host_key_checking en ansible.cfg
cat << "EOF"  
Deshabilitamos host_key_checking en ansible.cfg
EOF
sudo sed -i 's/#host_key_checking = False/host_key_checking = False/' /etc/ansible/ansible.cfg


# Editamos el fichero de configuración del servicio ssh.
cat << "EOF"  
Editamos el fichero de configuración del servicio ssh.
EOF
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config


# Reiniciamos el servicio sshd.
cat << "EOF"  
Reiniciamos el servicio sshd.
EOF
sudo systemctl restart sshd


cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
FIN INSTALACION (1/2) VM3: Ubuntu/Xenial64  (WebServer2-RedPruebas-JuicyShop)        
EOF

