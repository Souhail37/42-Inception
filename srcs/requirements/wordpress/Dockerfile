FROM debian:buster

RUN apt-get update && apt-get install php php7.3-fpm php-mysql curl -y

RUN mkdir /run/php/

COPY ./tools/wordpress.sh /tmp/wordpress.sh

RUN chmod +x /tmp/wordpress.sh

EXPOSE 9000

ENTRYPOINT [ "/tmp/wordpress.sh" ]

CMD [ "php-fpm7.3", "-F" ]
