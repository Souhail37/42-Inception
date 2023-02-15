#!/bin/bash

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

echo $MYSQL_DATABASE $MYSQL_USER $MYSQL_PASSWORD > test.txt

mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress_db;"

mysql -u root -e "CREATE USER IF NOT EXISTS 'souhail'@'%' IDENTIFIED BY 'password123';"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'souhail'@'%';"

mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'rootpassword';"

mysql -u root -e "FLUSH PRIVILEGES;"

kill `cat /var/run/mysqld/mysqld.pid`
# # service mysql restart
# mysqladmin -u root password rootpassword