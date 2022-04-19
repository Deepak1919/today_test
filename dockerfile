FROM nginx
FROM php
RUN apt update -y
RUN apt install nginx -y
RUN service nginx restart
ADD . /var/www/html
