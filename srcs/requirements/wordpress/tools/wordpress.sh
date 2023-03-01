#!/bin/bash

sed -i 's/\/run\/php\/php7.3-fpm.sock/9000/' /etc/php/7.3/fpm/pool.d/www.conf

if [ ! -f /var/www/html/wp-config.php ]; then
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/bin/wp

	cd /var/www/html

	wp core download --allow-root

	cp wp-config-sample.php wp-config.php

	wp config set DB_NAME $MYSQL_DATABASE --allow-root
	wp config set DB_USER $MYSQL_USER --allow-root
	wp config set DB_PASSWORD $MYSQL_PASSWORD --allow-root
	wp config set DB_HOST $MYSQL_HOST --allow-root

	wp core install --url=$DOMAIN_NAME --title="WordPress Site" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root
	wp user create $USER $USER_EMAIL --user_pass=$USER_PASSWORD --allow-root
fi

exec "$@"