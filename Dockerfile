FROM amazonlinux
RUN yum update -y
RUN yum install httpd -y
CMD ["httpd" , "-D" , "FOREGROUND"]
EXPOSE 80
