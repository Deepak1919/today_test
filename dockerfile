FROM nginx
RUN service nginx restart
ADD . /var/www/html
