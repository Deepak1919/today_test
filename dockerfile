FROM ubuntu
RUN apt update -y
RUN apt install httpd -y
RUN service httpd restart
RUN apt install php7.4 php7.4-fpm php7.4-mbstring php7.4-mysql -y
RUN a2enmod proxy_fcgi setenvif
RUN a2enconf php7.4-fpm
RUN service php7.4-fpm restart 
ADD . /var/www/html
