#!/bin/bash

cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
INICIO INSTALACION VM2: ubuntu/precise64 (WebServer1-RedPruebas-DVWA)         
EOF


# Creamos el usuario AdminPruebas con contraseña cifrada hash sha512 en /etc/shadow
cat << "EOF"
Creamos el usuario AdminPruebas con contraseña cifrada hash sha512 en /etc/shadow
EOF
sudo addgroup administrators
sudo useradd -u 2087 -c "Cuenta ULTRA secreta" -m -s /bin/bash -G administrators -p $(echo "AdMinistRat0r1" | openssl passwd -1 -stdin) AdminPruebas
sudo echo "AdminPruebas	ALL=(ALL) ALL" >> /etc/sudoers


#Creamos el usuario UsuarioPruebas con contraseña cifrada en /etc/shadow
cat << "EOF"
Creamos el usuario UsuarioPruebas con contraseña cifrada en /etc/shadow
EOF
sudo useradd -u 2088 -m -s /bin/bash -p $(echo "USeRPruEBas00" | openssl passwd -1 -stdin) UsuarioPruebas


# Modificamos /etc/ssh/sshd_config
cat << "EOF"
Modificamos /etc/ssh/sshd_config
EOF
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config


# Reiniciamos el servicio ssh
cat << "EOF"
Reiniciamos el servicio ssh
EOF
sudo /usr/sbin/sshd


# Creación del Flag 1
cat << "EOF"
Creación del Flag 1
EOF
sudo mkdir /home/AdminPruebas/Secret
sudo touch /home/AdminPruebas/Secret/flag1.txt
sudo touch /home/AdminPruebas/Secret/pista.txt
echo "¡¡¡ENHORABUENA HAS ENCONTRADO EL PRIMER FLAG!!!" >> /home/AdminPruebas/Secret/flag1.txt
echo "Flags completados 1/4 de la dificultad fácil del escenario" >> /home/AdminPruebas/Secret/flag1.txt
echo "Código secreto del FLAG1: 1u38js79289p" >> /home/AdminPruebas/Secret/flag1.txt
echo "El siguiente flag lo encontrarás en la IP: 192.168.56.52" >> /home/AdminPruebas/Secret/pista.txt
echo "Dicha máquina se corresponde al servidor de la red de pruebas." >> /home/AdminPruebas/Secret/pista.txt
echo "Presta atención a los servicios." >> /home/AdminPruebas/Secret/pista.txt
echo "Dicha IP tiene un servicio web." >> /home/AdminPruebas/Secret/pista.txt
echo "La segunda bandera no es ningún fichero, es un reto." >> /home/AdminPruebas/Secret/pista.txt
echo "Para superar el reto deberás iniciar sesión como administrador y encontrar las pantallas de /scoreBoard y /administration." >> /home/AdminPruebas/Secret/pista.txt
echo "Deberás demostrar con una captura de pantalla que se han conseguido dichos retos para obtener la segunda bandera." >> /home/AdminPruebas/Secret/pista.txt
echo "Además, te avisamos de que la tercera bandera se consigue tomando el control de la máquina 192.168.56.53 y encontrando el flag3.txt que hay escondido. No lo olvides ;)" >> /home/AdminPruebas/Secret/pista.txt


cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
FIN INSTALACION VM2: ubuntu/precise64 (WebServer1-RedPruebas-DVWA)          
EOF


