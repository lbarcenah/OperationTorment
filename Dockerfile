FROM nginx:1.27-alpine

# Config de nginx ligera (gzip + caché corta)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# El juego es un único HTML estático
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost/ >/dev/null || exit 1
