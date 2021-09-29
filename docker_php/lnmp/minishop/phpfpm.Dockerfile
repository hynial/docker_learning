FROM php:fpm

RUN apt-get update --fix-missing
RUN apt-get install -y build-essential libssl-dev zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd

RUN pecl install xdebug && docker-php-ext-enable xdebug
