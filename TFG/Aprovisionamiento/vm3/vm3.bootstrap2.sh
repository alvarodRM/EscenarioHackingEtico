#!/bin/bash

cat << "EOF"
 __      _
/ _\ ___| |_ _   _ _ __
\ \ / _ \ __| | | | '_ \
_\ \  __/ |_| |_| | |_) |
\__/\___|\__|\__,_| .__/
                  |_|
INICIO INSTALACION (2/2) VM3: Ubuntu/Xenial64  (WebServer2-RedPruebas-JuicyShop)        
EOF


# Modificamos los permisos de las carpetas de usuarios, solo permitimos acceso al propietario.
cat << "EOF"
Modificamos los permisos de las carpetas de usuarios, solo permitimos acceso al propietario.
EOF
sudo chmod 700 /home/AdminPruebas
sudo chmod 700 /home/UsuarioPruebas
sudo chmod 700 /home/vagrant


# Eliminamos carpeta que venía por defecto y no queremos en nuestro escenario.
cat << "EOF"  
Eliminamos carpeta que venía por defecto y no queremos en nuestro escenario.
EOF
sudo rm -rf /home/ubuntu


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
FIN INSTALACION (2/2) VM3: Ubuntu/Xenial64  (WebServer2-RedPruebas-JuicyShop)        
EOF