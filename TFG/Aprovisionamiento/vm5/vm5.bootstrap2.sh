#!/bin/bash

cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
INICIO INSTALACION (2/2) VM5: KaliLinux  (Client2-RedPruebas-RedPreProduccion)            
EOF


# Creación del Flag 4
cat << "EOF"
Creación del Flag 4
EOF
sudo mkdir /home/Nuria/CarpetaOculta
sudo touch /home/Nuria/CarpetaOculta/flag4.txt
sudo touch /home/Nuria/CarpetaOculta/pistas.txt
echo "¡¡¡ENHORABUENA, HAS COMPLETADO CON ÉXITO LA DIFICULTAD FÁCIL DEL ESCENARIO!!!" >> /home/Nuria/CarpetaOculta/flag4.txt
echo "Flags completados 4/4 de la dificultad fácil del escenario." >> /home/Nuria/CarpetaOculta/flag4.txt
echo "Código secreto del FLAG4: io7b470rr2z0" >> /home/Nuria/CarpetaOculta/flag4.txt
echo "El siguiente flag lo encontrarás en la IP: 192.168.56.98" >> /home/Nuria/CarpetaOculta/pistas.txt
echo "Si te atreves con la dificultad media del escenario, aprovecha bien la siguiente pista." >> /home/Nuria/CarpetaOculta/pistas.txt
echo "Pista: En el servicio ftp, tenemos el usuario alvaro." >> /home/Nuria/CarpetaOculta/pistas.txt
echo "La password comienza por test**** y contiene 8 caracteres." >> /home/Nuria/CarpetaOculta/pistas.txt


# Eliminamos todos los permisos de lectura y escritura de los directorios secretos.
cat << "EOF"
Eliminamos todos los permisos de lectura y escritura de los directorios secretos.
EOF
sudo chmod 100 /home/Nuria/CarpetaOculta
sudo chmod 100 /home/Nuria/CarpetaOculta/flag4.txt
sudo chmod 100 /home/Nuria/CarpetaOculta/pistas.txt


# Ocultamos el directorio CarpetaOculta, para que no aparezca al hacer un simple ls.
cat << "EOF"
Ocultamos el directorio CarpetaOculta, para que no aparezca al hacer un simple ls.
EOF
mv /home/Nuria/CarpetaOculta /home/Nuria/.CarpetaOculta


# Modificamos los permisos de las carpetas de usuarios, solo permitimos acceso al propietario.
cat << "EOF"
Modificamos los permisos de las carpetas de usuarios, solo permitimos acceso al propietario.
EOF
sudo chmod 700 /home/Nuria
sudo chmod 700 /home/Pepe19
sudo chmod 700 /home/vagrant


# Eliminamos carpeta que venía por defecto y no queremos en nuestro escenario.
cat << "EOF"  
Eliminamos carpeta que venía por defecto y no queremos en nuestro escenario.
EOF
sudo rm -rf /home/ubuntu


# Reiniciamos el servicio ssh.
cat << "EOF"  
Reiniciamos el servicio ssh.
EOF
sudo service ssh restart


cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
INICIO INSTALACION (2/2) VM5: KaliLinux   (Client2-RedPruebas-RedPreProduccion)              
EOF