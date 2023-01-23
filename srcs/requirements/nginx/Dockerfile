FROM debian

RUN apt update && apt install nginx -y

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

COPY ./tools/index.html /var/www/html

CMD [ "nginx", "-g", "daemon off;" ]