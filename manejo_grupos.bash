
# ? Ver a los grupos que pertenece el usuario actual: 

groups # muestra los grupos a los que perteneces. 

# ? Ver que usuarios perteneces a ciertos grupos: 

getent group nombre_del_grupo


# ? Crear un grupo nuevo: 

sudo groupadd nombre_del_nuevo_grupo

# ? Ver todos los grupos existentes en linux: 

cat /etc/group


# ? Cambiar el nombre del grupo: 

sudo groupmod -n nuevo_nombre antiguo_nombre


# ? Cambiar el grupo al que pertenece un archivo o carpeta (e.g. para poder compartir un archivo entre varios grupos)

sudo chgrp grupo_a_compartir nombre_carpeta


# ? Agregar a un usuario a otro grupo: 

sudo usermod -aG nombre_del_grupo nombre_del_usuario


# ? Agregar permisos especiales: 
# Si es una carpeta compartida en un grupo especifico,
# cuando un usuario cree un nuevo archivo el group owner sera el mismo
# de la carpeta compartida y NO el del user que la creo. 

sudo chmod +s nombre_carpeta 


# ? Eliminar a un usuario de un grupo: 

sudo gpasswd -d nombre_usuario nombre_grupo

# ? Eliminar el grupo por completo: 

sudo groupdel nombre_del_grupo