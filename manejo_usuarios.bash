
# Comandos para ver los usuarios y manejarlos 

# ? Ver los usuarios disponibles y el grupo al que pertenecen: 

sudo cat /etc/passwd 

# Ver fecha de creacion, periodo de cambio de contraseña y saber si estan bloqueados: 

sudo cat /etc/shadow 


# ? Agregar un nuevo usuario: 

sudo useradd nombre_del_nuevo_usuario

# cambiar la contraseña del usuario:

sudo passwd nombre_del_nuevo_usuario  # (luego se agrega la new password)

# Agregar al nuevo usuario a un grupo (opcional)

sudo usermod -aG nombre_del_grupo nombre_del_usuario


# ? Eliminar un usuario: 

sudo userdel -r nombre_de_usuario

# Comprobar si existe el usuario: 

id nombre_de_usuario

id -u # muestra el id del usuario actual


# ? Cambiar de usuario: 

su nombre_de_usuario


# ? Cambiar el finger information "gekos info"

sudo chfn nombre_de_usuario


# ? Bloquear usuarios: (con esto se bloquean accesos futuros, no los que ya tienen)

sudo usermod --lock nombre_de_usuario

# ? Desbloquear usuarios: 

sudo usermod --unlock nombre_de_usuario