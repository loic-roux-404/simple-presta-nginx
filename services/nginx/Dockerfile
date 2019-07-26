
FROM nginx:latest

LABEL Loïc ROUX <loic.roux.404@gmail.com>

# Make snakeoil certificates available
RUN apt-get update && apt-get install -qy ssl-cert
RUN mkdir mkdir /usr/share/nginx/cache
#Adding NGINX configuration
COPY site.conf /etc/nginx/conf.d/default.conf
