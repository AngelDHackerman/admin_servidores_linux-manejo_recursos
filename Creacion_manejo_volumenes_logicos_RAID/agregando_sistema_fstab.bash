
# todo: Para esto debemos tener nuestro volumen logico ya montado. 

# ver los bloques montados: 

sudo fdisk -l 

# ? Dar formato al volumen logico: 

sudo mkfs.ext4 /dev/volumeGroup/publico 

sudo mkfs.ext4 /dev/volumeGroup/privado


# Creamos una carpeta para montar los volumenes logicos:

cd / 

sudo mkdir publico privado


# ? Montamos los volumenes: 

sudo mount /dev/volumenGroup/publico /publico

sudo mount /dev/volumenGroup/privado /privado


# ? montando las particiones desde el arranque: 

sudo vim /etc/fstab

  # Estando en el editor agregamos la linea: 
/dev/volumeGroup/publico    /publico    ext4    defaults    0   2
/dev/volumeGroup/privado    /privado    ext4    defaults    0   2