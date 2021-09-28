https://linuxhint.com/lamp_server_docker/

docker-compose up -d

docker-compose ps

docker-compose down

docker volume ls
docker volume rm lamp_mysql-data
docker volumn inspect lamp_mysql-data

cd ~/Library/Containers/com.docker.docker/Data/vms
screen ~/Library/Containers/com.docker.docker/Data/vms/0/tty


Tips:

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf &&\
a2enmod rewrite &&\
a2dissite 000-default &&\
a2ensite my-apache-site &&\
service apache2 restart

RUN apt-get install -y libmcached-dev zlib1g-dev &&\
pecl install memcached-3.1.5 &&\
docker-php-ext-enable memcached