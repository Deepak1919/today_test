FROM deep1919/testimage
#RUN apt update
#RUN apt install nginx -y
#RUN service nginx restart
#RUN service nginx enable
CMD apachectl -D FOREGROUND
ADD . /var/www/html

