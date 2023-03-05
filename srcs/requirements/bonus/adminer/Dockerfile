FROM debian:buster

RUN apt-get update && apt-get install wget -y && apt-get install -y apache2 php7.3 php7.3-mysql php7.3-pdo

WORKDIR /var/www/html

RUN wget "http://www.adminer.org/latest.php" -O index.php

RUN sed -i 's/DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm/DirectoryIndex index.php index.cgi index.pl index.html index.xhtml index.htm/' /etc/apache2/mods-enabled/dir.conf

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]