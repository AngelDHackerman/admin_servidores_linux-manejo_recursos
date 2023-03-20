
# Con estos comandos se muestra como particionar y montar unidades de almacenamiento: 

# ? Lista las unidades de almacenamiento disponibles: 

lsblk

# ? ver el punto de montaje de cada unidad de almacenamiento: 

sudo fdisk -l 

# ? Acceder al nuevo disco de almacenamiento: 

sudo fdisk /ruta/nuevo-almacenamiento # e.g: sudo fdisk /dev/sdb

# Luego de eso veras un promt "Command (m for help)"

# ? Agregar una nueva particion: 

Command (m for help): n  # usamos la opcion n

select (default p): p  # usamos la opcion default (particion primaria)

Partition number (1-4, default 1):  # enter, (usaremos la opcion default)

First sector (2048-xxxxxxxx, default 2048)  # enter, (usaremos la opcion default) el xxxxxxx puede ser un numbero variable, dependiendo el tamaño del disco

Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-xxxxxxxx, default xxxxxxxx): +3G  # Indicamos que esta particion sera de 3G


# ? Ver la tabla de particiones: 

Command (m for help): p  # muestra como quedaran las particiones 

# ? Guardar los cambios hechos: 

Command (m for help): w  # Salvamos los cambios hechos, (no hay vuelta atras)



# ? Dando formato a las particiones creadas: 

lsblk  # ver las particiones montadas en el sistema 

sudo mkfs.ext4 /ruta/nuevo-almacenamiento # e.g: sudo mkfs.ext4 /dev/sdb1


# ? Montando la nueva particion para poder usar su espacio disponible: 

cd /  # nos movemos al root 

sudo mkdir scripts  # Creamos la carpeta donde queremos usar el nuevo espacio

sudo mount /ruta/nuevo-almacenamiento /carpeta-usar  # e.g: sudo mount /dev/sdb1 /scripts




