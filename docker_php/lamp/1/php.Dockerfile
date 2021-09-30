FROM php:7.4.3-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN apt-get update -y && \
    apt-get install -y sendmail libpng-dev && \
    apt-get install -y zlib1g-dev

RUN apt-get install -y \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libpng-dev libxpm-dev \
    libfreetype6-dev

# RUN docker-php-ext-install mbstring
# RUN docker-php-ext-install zip


# RUN docker-php-ext-configure gd --with-jpeg=/usr/include/ && docker-php-ext-install gd
RUN docker-php-ext-configure gd \
    --with-webp \
    --with-jpeg \
    --with-xpm \
    --with-freetype

RUN docker-php-ext-install gd


RUN a2enmod rewrite
# RUN a2enmod rewrite headers && /etc/init.d/apache2 restart