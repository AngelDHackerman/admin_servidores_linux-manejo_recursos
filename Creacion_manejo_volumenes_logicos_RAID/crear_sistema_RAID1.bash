
# Pasos a seguir para crear un sistema RAID 1

# una vez (creadas o conectadas) las nuevas unidades de almacenamiento: 


# ? listar los bloques (discos) discponibles: 

lsblk

# ? Crear las particiones: ( se deben usar 1 discos del mismo tamaño, hacer lo mismo con ambos discos)

sudo fdisk /dev/unidad  # e.g: sudo fdisk /dev/sdc  || sudo fdisk /dev/sdd 

# seguimos los pasos en default del menu de fdisk

command (m for help): n

command (m for help): p

Parition number (1-4, default 1): 1 

First sector (2048, xxxxx, default 2048): # enter (default) 

Last sector # enter (default) 

Command (m for help): w  # Se guardaran los cambios


# ? Creando el sistema RAID 1: 

sudo apt install mdadm  # ubuntu 

sudo dnf install mdadm  # fedora 


mdadm -h  # muestra la ayuda del comando mdadm (varias de las opciones)

mdadm --create --help # Muestra todas las opciones disponibles con el parametro --create

# crear el arreglo raid: 

        # nombre arreglo          N. discos (2)     Ruta de discos [cd] es para el disco "c" y el disco "d"
mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sd[cd]

Continue creating array? yes # (enter). Aceptamos los cambios 


# ? Ver los detalles del nuevo array de discos: 

lsblk  # listamos y verificamos la creacion del nuevo RAID 1 

mdadm --misc --detail /dev/md0  # muestra toda la informacion sobre el array de discos

