
# todo: De antemano debemos crear un sistema RAID o un arreglo de discos para poder montar un sistema de discos logicos

sudo apt install lvm2 # ubuntu 

sudo dnf install lvm2 # Fedora


lvm --help  # Muestra todas las opciones para poder manipular los volumenes logicos 


# ? Iniciando con la creacion del volumen fisico

sudo pvcreate /dev/md0  # crea el volumen fisico 

sudo pvdisplay  # muestra los volumenes fisicos


# ? Creando el grupo de volumenes logicos sobre los discos fisicos: ( el disco grande )

sudo vgcreate nombre_grupo /dev/md0  # crea el volumen logico 

sudo vgdisplay  # muestra los volumenes logicos creados


# ? Creando los volumenes logicos ( los discos pequeños )

sudo lvcreate --name nombre_disco_logico --size 1Gb volumenGroup  # primer disco logico de 1Gb 

sudo lvdisplay  # muestra los volumenes creados 