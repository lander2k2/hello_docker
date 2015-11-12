FROM debian:latest

# install apache
RUN apt-get update && apt-get install -y apache2

# hello docker page
COPY index.html /var/www/

# expose ports
EXPOSE 80

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

