# Usa una imagen base de Nginx
FROM nginx:alpine

# Copia los archivos de los sitios web en sus respectivos directorios
COPY html5up-dimension /usr/share/nginx/html/dimension
COPY html5up-ethereal /usr/share/nginx/html/ethereal
COPY html5up-massively /usr/share/nginx/html/massively
COPY html5up-paradigm-shift /usr/share/nginx/html/paradigm-shift
COPY html5up-story /usr/share/nginx/html/story

# Copiar el archivo de configuración nginx.conf al contenedor
COPY nginx.conf /etc/nginx/nginx.conf

# Exponer el puerto 80 para servir los sitios web
EXPOSE 80
#para acceder a las rutas pondremos http://localhost:8080/dimension/   o  http://localhost:8080/ethereal/
#y asi para cada uno de los 5 sites qe hemos creado 