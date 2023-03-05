#!/bin/bash

MYSQL_DATABASE=wordpress_db
MYSQL_USER=sismaili
MYSQL_PASSWORD=password123
MYSQL_ROOT_PASSWORD=rootpassword

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"

mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%';"

mysql -u root -e "FLUSH PRIVILEGES;"

kill `cat /var/run/mysqld/mysqld.pid`