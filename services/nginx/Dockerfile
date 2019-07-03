
FROM nginx:latest

LABEL Loïc Roux <schlpbch@gmail.com>

# Make snakeoil certificates available
RUN apt-get update && apt-get install -qy ssl-cert

#Adding NGINX configuration
COPY site.conf /etc/nginx/conf.d/default.conf