#!/bin/bash

MYSQL_DATABASE=wordpress_db
MYSQL_USER=souhail
MYSQL_PASSWORD=password123
MYSQL_ROOT_PASSWORD=rootpassword

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

echo "Database: $MYSQL_DATABASE, User: $MYSQL_USER, Password: $MYSQL_PASSWORD" > test.txt

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%';"

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

kill `cat /var/run/mysqld/mysqld.pid`