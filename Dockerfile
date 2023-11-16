FROM ubuntu:latest
LABEL maintainer="chandrashekarvemula111"
RUN apt update -y
RUN apt install apache2 -y
COPY . /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
