FROM debian:buster

RUN apt update -y && apt install -y php php-mysql && apt install -y wget && wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "/var/www/html/adminer.php"]