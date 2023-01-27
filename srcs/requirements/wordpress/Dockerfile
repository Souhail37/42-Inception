FROM debian

RUN apt update && apt install php php-fpm php-mysql -y

RUN mkdir /run/php/

COPY ./tools/wordpress.sh /tmp/wordpress.sh

RUN chmod +x /tmp/wordpress.sh

ENTRYPOINT [ "/tmp/wordpress.sh" ]

CMD [ "php-fpm7.3", "-F" ]