FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
ADD index..html /var/www/html
CMD ["/usr/sbin/apachectl" , "-D" , "FOREGROUND"]
EXPOSE 80

