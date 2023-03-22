
# Ver el archivo de configuracion grub 

sudo cat /boot/grub2/grub.cfg

# crear copia de seguridad de grub: 

sudo cp /boot/grub2/grub.cfg /boot/grub2/grub.cfg.bak


# ? Si el archivo de "grub.cfg" es dañado, al hacer reboot, nos dara un promt en negro

# todo: insertar un liveboot al sistema y luego usar el root

# Cambiamos la password de root user: 

sudo passwd 

sudo su  # cambiamos al usuario root 

cd /  # nos movemos a la carpeta root. 


fdisk -l | less 
# * Buscamos las particiones que sean: /dev/sda  (este es el que contiene a nuestro sistema)
# * Podremos trabajar en /dev/sda2 (contiene el sistema) y /dev/sda1 (solo contiene el bios boot)


# ? Montamos nuestro bloque con el sistema en la carpeta /mnt 

ls /mnt  # deberia estar vacio 

mount /dev/sda2 /mnt  # montamos la unidad del sistema en /mnt

ls /mnt  # deberia ahora mostrar los archivos que teniamos antes. 



# ? Reparando el grub, lo que tenemos en nuestro liveBoot lo pasaremos al sistema
# ? Esto es un escalamiento de privilegios 

mount -o bind /dev/ /mnt/root/dev  # bind "une los sitemas" /dev/ es la ruta del liveBoot. /mnt/root/dev es la ruta del sistema que montamos en /mnt

mount -o bind /dev/pts /mnt/dev/pts

mount -o bind /proc/ /mnt/proc

mount -o bind /run /mnt/run

mount -o bind /sys /mnt/sys

# ? Ganando acceso root al sistema montado en /mnt 

chroot /mnt/root /bin/bash  # con chroot, ganamos accesos de root al sistema que esta montado en /mnt/root, luego ejecutamos /bin/bash (la cosola del sistema)

# lo que hagamos ahora sera en el sistema perdido y no en el liveBoot

