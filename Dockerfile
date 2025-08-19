# Imagen base ligera de Nginx
FROM nginx:alpine

# Elimina la configuración por defecto
RUN rm /etc/nginx/conf.d/default.conf

# Copia nuestra configuración personalizada
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia los archivos de tu landing (HTML, CSS, JS, imágenes)
COPY . /usr/share/nginx/html

# Exponer puerto 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
