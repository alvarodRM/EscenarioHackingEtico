#!/bin/bash

cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
INICIO INSTALACION (2/2) VM6: ubuntu/trusty64   (FTPServer-RedPreProduccion)          
EOF


# Creación del Flag 5
cat << "EOF"
Creación del Flag 5
EOF
sudo mkdir /home/AdminFTP/documentos /home/AdminFTP/contactos /home/AdminFTP/cumpleaños /home/AdminFTP/telefonos /home/AdminFTP/informacion /home/AdminFTP/secret
sudo mkdir /home/AdminIT/documentos /home/AdminIT/contactos /home/AdminIT/cumpleaños /home/AdminIT/telefonos /home/AdminIT/informacion
sudo mkdir /home/FTPDev/desarrolladores /home/FTPDev/backups /home/FTPDev/test /home/FTPDev/lists
sudo mkdir /home/Paula96/documentos
sudo touch /home/AdminFTP/secret/flag5.txt
sudo touch /home/AdminFTP/secret/pistas.txt
echo "¡¡¡Felicitaciones has obtenido tu primera bandera de la dificultad media del escenario!!!" >> /home/AdminFTP/secret/flag5.txt
echo "Flags completados 1/4 de la dificultad media del escenario." >> /home/AdminFTP/secret/flag5.txt
echo "Código secreto del FLAG5: xx9hjszz8k99" >> /home/AdminFTP/secret/flag5.txt
echo "El siguiente flag lo encontrarás en la IP: 192.168.56.99" >> /home/AdminFTP/secret/pistas.txt
echo "Pista importante, fijarse en los servicios vulnerables" >> /home/AdminFTP/secret/pistas.txt
echo "Metasploit quizás pueda ayudarte a conseguir la siguiente bandera" >> /home/AdminFTP/secret/pistas.txt
echo "Te deseamos que tengas suerte ;)" >> /home/AdminFTP/secret/pistas.txt


# Ocultamos algunos directorios de usuario, para que no aparezca al hacer un simple ls.
cat << "EOF"
Ocultamos algunos directorios de usuario, para que no aparezca al hacer un simple ls.
EOF
mv /home/AdminFTP /home/.AdminFTP
mv /home/AdminIT /home/.AdminIT
mv /home/FTPDev /home/.FTPDev
mv /home/Paula96 /home/.Paula96
mv /home/.AdminFTP/secret /home/.AdminFTP/.secret


# Modificamos los permisos de las carpetas de usuarios, solo permitimos acceso al propietario.
cat << "EOF"
Modificamos los permisos de las carpetas de usuarios, solo permitimos acceso al propietario.
EOF
sudo chmod 700 /home/.AdminFTP
sudo chmod 700 /home/.AdminIT
sudo chmod 700 /home/.FTPDev
sudo chmod 700 /home/.Paula96
sudo chmod 700 /home/vagrant


# Eliminamos todos los permisos de lectura y escritura de los directorios secretos.
cat << "EOF"
Eliminamos todos los permisos de lectura y escritura de los directorios secretos.
EOF
sudo chmod 100 /home/.AdminFTP/.secret
sudo chmod 100 /home/.AdminFTP/.secret/flag5.txt
sudo chmod 100 /home/.AdminFTP/.secret/pistas.txt


# Modificamos los permisos de las carpetas de usuarios, damos permisos totales.
cat << "EOF"
Modificamos los permisos de las carpetas de usuarios, damos permisos totales.
EOF
sudo chmod 777 /home
sudo chmod 777 /home/ftp/alvaro
echo "AdminFtp (nombre:Juan, appellidos:Perez, Nickname:AdminFtp, birthday:02/08/1980" >> /home/ftp/alvaro/consejoPista.txt
echo "Consejo, utilice herramienta cupp.py, descarguela de git." >> /home/ftp/alvaro/consejoPista.txt

# Eliminamos carpetas de usuarios que venían por defecto y no queremos en nuestro escenario.
cat << "EOF"  
Eliminamos carpetas de usuarios que venían por defecto y no queremos en nuestro escenario.
EOF
sudo rm -rf /home/user/ubuntu
sudo rm -rf /home/ubuntu


# Reiniciamos el servicio sshd.
cat << "EOF"  
Reiniciamos el servicio sshd.
EOF
sudo /usr/sbin/sshd


cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
FIN INSTALACION (2/2) VM6: ubuntu/trusty64   (FTPServer-RedPreProduccion)           
EOF