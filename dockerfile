FROM centos
RUN yum update -y
RUN yum install apache2 -y
RUN service apache2 restart
RUN yum install php7.4 php7.4-fpm php7.4-mbstring php7.4-mysql -y
RUN a2enmod proxy_fcgi setenvif
RUN a2enconf php7.4-fpm
RUN service php7.4-fpm restart 
ADD . /var/www/html
