
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


