FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN service nginx restart
RUN apt install php7.4 php7.4-fpm php7.4-mbstring php7.4-mysql -y
RUN a2enmod proxy_fcgi setenvif
RUN a2enconf php7.4-fpm
RUN systemctl restart php7.4-fpm
RUN systemctl enable php7.4-fpm
RUN systemctl reload apache2
CMD apachectl -D FOREGROUND
ADD . /var/www/html

