FROM php:7.4-apache

WORKDIR /var/www/html
COPY backend/conexao.php /var/www/html
COPY backend/index.php /var/www/html
COPY frontend/index.html /var/www/html
COPY frontend/js.js /var/www/html
COPY frontend/css.css /var/www/html

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo_mysql

EXPOSE 80
