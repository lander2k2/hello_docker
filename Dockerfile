FROM debian:latest

# install apache
RUN apt-get update && apt-get install -y apache2

# hello docker page
COPY index.html /var/www/

# enable ssl module
RUN a2enmod ssl

# enable default ssl
RUN a2ensite default-ssl

# expose ports
EXPOSE 80 443

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

