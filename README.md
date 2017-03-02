# taller-docker

Este repositorio de git contiene los ficheros para completar el taller del PDF adjunto en este repositorio

El taller se realiza sobre una VM de https://clouding.io de 2 Cores, 2GB de RAM y 25GB de SSD con la imagen de docker.

Incluye tambien el script /srv/docker/bin/crear-y-levantar-instancias.sh el cual una vez clonado este repositorio al servidor, o bien copiado todo a mano, se lanza y levanta los tres contenedores; luego ya se puede proceder a instalar wordpress.

Instrucciones para clonar con cliente de git en la VM de clouding.io:

```
git clone https://github.com/cloudingVPS/taller-docker
mv taller-docker/srv/* /srv/
/srv/docker/bin/crear-y-levantar-instancias.sh
```

**Tanto el script como las instrucciones del PDF levantan una instancia de MySQL con el password de root "password", se aconseja modificarlo por un password mas seguro**
