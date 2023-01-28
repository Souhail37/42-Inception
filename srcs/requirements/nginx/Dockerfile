FROM debian:buster

RUN apt-get update && apt-get install nginx -y

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

COPY ./tools/index.html /var/www/html

CMD [ "nginx", "-g", "daemon off;" ]