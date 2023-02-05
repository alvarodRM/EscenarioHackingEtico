# Escenario Hacking Etico
Autor: Álvaro de Rojas Maraver

## Infraestructura
<img width="1050" alt="Captura de pantalla 2023-02-05 a las 0 59 27" src="https://user-images.githubusercontent.com/105986456/216794651-c78f6693-3bc5-425a-bbdb-3a1f1ffb13a8.png">

## Resumen

Este trabajo consiste en el diseño, desarrollo y explotación de un laboratorio de ciberseguridad que simula una infraestructura corporativa. 

Las tecnologías y aplicaciones que se han utilizado son: VirtualBox para el despliegue de las máquinas virtuales, Vagrant para editar las configuraciones de los dispositivos y redes, Ansible
y bash para realizar el aprovisionamiento de los paquetes y servicios de las máquinas de la infraestructura y Python para la creación de los scripts de despliegue de cada nivel de dificultad del escenario y para la implementación del ransomware de la última bandera.

La infraestructura corporativa del 
laboratorio estará formada por varias redes internas, servidores, equipos finales de usuario y banderas ocultas en el escenario. Para superar el laboratorio se tendrá que analizar y localizar vulnerabilidades en los servicios que nos ofrece cada máquina virtual del escenario y encontrar las banderas escondidas.

En el presente trabajo se pondrán en práctica diversas técnicas de pentesting para conseguir romper el perímetro de cada red interna y comprometer el dominio completo de la infraestructura corporativa. Para realizar la auditoría del laboratorio se utilizará Kali Linux como sistema operativo de la máquina atacante y las herramientas open source que nos proporciona dicha distribución de Linux. Para explotar el escenario se seguirán las diversas tácticas y técnicas que nos ofrece la matriz del modelo Mitre Att&ck: Acceso inicial, ejecución, persistencia, escalada de privilegios, evasión de la defensa, acceso mediante credenciales, descubrimiento, movimiento lateral, recolección de información, comando y control, exfiltración e impacto.

El objetivo consiste en encontrar las vulnerabilidades existentes en el escenario, lograr tener el control total sobre las máquinas, obteniendo permisos de administrador y encontrando las banderas ocultas en el escenario.

## Requisitos
