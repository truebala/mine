FROM amazonlinux
RUN yum install httpd -y
COPY index.html /var/www/index.html
CMD ["httpd" , "-D" , "FOREGROUND"]
EXPOSE 80
