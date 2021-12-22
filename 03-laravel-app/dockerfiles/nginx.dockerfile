FROM nginx:stable-alpine
 
WORKDIR /etc/nginx/conf.d
COPY config/nginx.conf /etc/nginx/conf.d/
RUN mv nginx.conf default.conf

COPY src /var/www/html