
# Con estos comandos se muestra como particionar y montar unidades de almacenamiento: 

# ? Lista las unidades de almacenamiento disponibles: 

lsblk

# ? ver el punto de montaje de cada unidad de almacenamiento: 

sudo fdisk -l 

# ? Acceder al disco de almacenamiento: 

sudo fdisk /ruta/almacenamiento # e.g: sudo fdisk /dev/sdb

# Luego de eso veras un promt "Command (m for help)"

# ? Agregar una nueva particion: 

Command (m for help): n  # usamos la opcion n

select (default p): p  # usamos la opcion default (particion primaria)

Partition number (1-4, default 1):  # enter, (usaremos la opcion default)

First sector (2048-xxxxxxxx, default 2048)  # enter, (usaremos la opcion default) el xxxxxxx puede ser un numbero variable, dependiendo el tamaño del disco

Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-xxxxxxxx, default xxxxxxxx): +3G  # Indicamos que esta particion sera de 3G


# ? Ver la tabla de particiones: 

Command (m for help): p  # muestra como quedaran las particiones 

