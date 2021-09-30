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


[ Apache ]
httpd.conf 配置文件中加载了 mod_rewrite.so 模块
AllowOverride None 将 None 改为 All
把下面的内容保存为 .htaccess 文件放到应用入口文件的同级目录下
<IfModule mod_rewrite.c>
  Options +FollowSymlinks -Multiviews
  RewriteEngine On

  RewriteCond %{REQUEST_FILENAME} !-d
  RewriteCond %{REQUEST_FILENAME} !-f
  RewriteRule ^(.*)$ index.php/$1 [QSA,PT,L]
</IfModule>