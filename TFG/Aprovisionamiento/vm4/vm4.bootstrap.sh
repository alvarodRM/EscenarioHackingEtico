#!/bin/bash

cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
INICIO INSTALACION VM4: Ubuntu/Metasploitable2 (Client1-RedPruebas)           
EOF


# Actualizamos paquetes.
cat << "EOF"  
Actualizamos paquetes.
EOF
sudo apt-get update -y
sudo apt-get upgrade -y


# Instalamos sshpass.
cat << "EOF"  
Instalamos sshpass.
EOF
sudo apt-get install sshpass -y


# Creamos el usuario Juan112 con contraseña cifrada hash sha512 en /etc/shadow.
cat << "EOF"  
Creamos el usuario Juan112 con contraseña cifrada hash sha512 en /etc/shadow.
EOF
sudo addgroup administrators
sudo useradd -c "Bandera ;)" -m -s /bin/bash -G administrators -p $(echo "rockstar" | openssl passwd -1 -stdin) Juan112
sudo echo "Juan112	ALL=(ALL) ALL" >> /etc/sudoers


# Creamos el usuario Nacho91 con contraseña cifrada en /etc/shadow.
cat << "EOF"  
Creamos el usuario Nacho91 con contraseña cifrada en /etc/shadow.
EOF
sudo useradd -m -s /bin/bash -p $(echo "NaChO1991" | openssl passwd -1 -stdin) Nacho91

# Modificamos /etc/ssh/sshd_config.
cat << "EOF"  
Modificamos /etc/ssh/sshd_config.
EOF
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo /usr/sbin/sshd


# Creación del Flag 3
cat << "EOF"
Creación del Flag 3
EOF
sudo mkdir /home/Juan112/settings /home/Juan112/configurations /home/Juan112/Secret
sudo touch /home/Juan112/Secret/flag3.txt
sudo touch /home/Juan112/Secret/pistas.txt
echo "¡¡¡ENHORABUENA, ya solo te queda una bandera para superar la dificultad fácil del escenario!!!" >> /home/Juan112/Secret/flag3.txt
echo "Flags completados 3/4 de la dificultad fácil del escenario." >> /home/Juan112/Secret/flag3.txt
echo "Código secreto del FLAG3: d3mdi4n4n468" >> /home/Juan112/Secret/flag3.txt
echo "El siguiente flag lo encontrarás en la IP: 192.168.56.54" >> /home/Juan112/Secret/pistas.txt
echo "Dicha máquina se corresponde a un endpoint (equipo local de usuario) que tiene conectividad con los servidores del escenario." >> /home/Juan112/Secret/pistas.txt
echo "Si consigues tomar el control de la siguiente máquina obtendrás visibilidad de nuevas redes y podrás adentrarte en el nivel de escenario de dificultad media." >> /home/Juan112/Secret/pistas.txt
echo "Pista: Un usuario del sistema es Pepe19" >> /home/Juan112/Secret/pistas.txt


# Eliminamos todos los permisos de lectura y escritura de los directorios secretos.
cat << "EOF"
Eliminamos todos los permisos de lectura y escritura de los directorios secretos.
EOF
sudo chmod 100 /home/Juan112/Secret
sudo chmod 100 /home/Juan112/Secret/flag3.txt
sudo chmod 100 /home/Juan112/Secret/pistas.txt


# Ocultamos el directorio Secret, para que no aparezca al hacer un simple ls.
cat << "EOF"
Ocultamos el directorio Secret, para que no aparezca al hacer un simple ls.
EOF
mv /home/Juan112/Secret /home/Juan112/.Secret


# Modificamos los permisos de las carpetas de usuarios, solo permitimos acceso al propietario.
cat << "EOF"
Modificamos los permisos de las carpetas de usuarios, solo permitimos acceso al propietario.
EOF
sudo chmod 700 /home/Juan112
sudo chmod 700 /home/Nacho91
sudo chmod 700 /home/vagrant


# Eliminamos carpetas de usuarios que venían por defecto y no queremos en nuestro escenario.
cat << "EOF"  
Eliminamos carpetas de usuarios que venían por defecto y no queremos en nuestro escenario.
EOF
sudo rm -rf /home/user
sudo rm -rf /home/service
sudo rm -rf /home/msfadmin
sudo rm -rf /home/ftp


# Reiniciamos el servicio sshd.
cat << "EOF"  
Reiniciamos el servicio sshd.
EOF
sudo /usr/sbin/sshd


# Filtramos los puertos con vulnerabilidades que no queremos exponer al usuario del escenario.
cat << "EOF"  
Filtramos los puertos con vulnerabilidades que no queremos exponer al usuario del escenario.
EOF
sudo iptables -A INPUT -p tcp --dport 23 -j DROP
sudo iptables -A INPUT -p tcp --dport 25 -j DROP
sudo iptables -A INPUT -p tcp --dport 53 -j DROP
sudo iptables -A INPUT -p tcp --dport 80 -j DROP
sudo iptables -A INPUT -p tcp --dport 139 -j DROP
sudo iptables -A INPUT -p tcp --dport 445 -j DROP
sudo iptables -A INPUT -p tcp --dport 512 -j DROP
sudo iptables -A INPUT -p tcp --dport 513 -j DROP
sudo iptables -A INPUT -p tcp --dport 514 -j DROP
sudo iptables -A INPUT -p tcp --dport 1099 -j DROP
sudo iptables -A INPUT -p tcp --dport 1524 -j DROP
sudo iptables -A INPUT -p tcp --dport 2049 -j DROP
sudo iptables -A INPUT -p tcp --dport 2121 -j DROP
sudo iptables -A INPUT -p tcp --dport 3306 -j DROP
sudo iptables -A INPUT -p tcp --dport 3632 -j DROP
sudo iptables -A INPUT -p tcp --dport 5432 -j DROP
sudo iptables -A INPUT -p tcp --dport 5900 -j DROP
sudo iptables -A INPUT -p tcp --dport 6000 -j DROP
sudo iptables -A INPUT -p tcp --dport 6667 -j DROP
sudo iptables -A INPUT -p tcp --dport 6697 -j DROP
sudo iptables -A INPUT -p tcp --dport 8009 -j DROP
sudo iptables -A INPUT -p tcp --dport 8180 -j DROP
sudo iptables -A INPUT -p tcp --dport 8787 -j DROP
sudo iptables -A INPUT -p tcp --dport 44796 -j DROP
sudo iptables -A INPUT -p tcp --dport 56305 -j DROP
sudo iptables -A INPUT -p tcp --dport 58360 -j DROP
sudo iptables -A INPUT -p tcp --dport 60342 -j DROP


# Bloqueamos los puertos con vulnerabilidades para la IP atacante.
cat << "EOF"  
# Bloqueamos los puertos con vulnerabilidades para la IP atacante.
EOF
sudo iptables -A OUTPUT -p tcp --dport 23 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 25 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 53 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 80 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 139 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 445 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 512 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 513 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 514 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 1099 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 1524 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 2049 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 2121 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 3306 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 3632 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 5432 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 5900 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 6000 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 6667 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 6697 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 8009 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 8180 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 44796 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 56305 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 58360 -d 192.168.56.50 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 60342 -d 192.168.56.50 -j DROP


cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
FIN INSTALACION VM4: Ubuntu/Metasploitable2 (Client1-RedPruebas)              
EOF


