FROM php:fpm

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN pecl install xdebug && docker-php-ext-enable xdebug

COPY ./index.php /app/public/index.php

COPY ./mysql.php /app/public/mysql.php