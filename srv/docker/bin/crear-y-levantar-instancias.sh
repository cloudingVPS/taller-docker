docker build -t docker/php-fpm:7.0.16 /srv/docker/etc/php-7.0.16/.

docker run -d --name mysql-01 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=wordpress -v /srv/dockerexports/var/lib/mysql:/var/lib/mysql mariadb:10.0 

docker run -d --name php-fpm-01 --link mysql-01 -v /srv/dockerexports/etc/php:/usr/local/etc/php -v /srv/dockerexports/var/www:/var/www/html docker/php-fpm:7.0.16

docker run -d --name nginx-01 -v /srv/dockerexports/etc/nginx:/etc/nginx/conf.d -v /srv/dockerexports/var/www:/var/www/html -v /srv/dockerexports/var/log/nginx:/var/log/nginx -p 80:80 --link php-fpm-01 nginx:stable
