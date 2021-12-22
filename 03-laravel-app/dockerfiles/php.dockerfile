FROM php:fpm-alpine
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html
COPY src /var/www/html

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
RUN chown -R laravel:laravel .
USER laravel 