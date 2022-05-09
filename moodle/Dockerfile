FROM php:7.2-apache

RUN apt-get update && \
	apt-get install -y curl ca-certificates && \
	apt-get clean

# PROXY

RUN a2enmod rewrite
RUN a2enmod headers
RUN a2enmod proxy
RUN a2enmod proxy_http

COPY 000-default.conf /etc/apache2/sites-enabled/

RUN service apache2 restart

# INSTALL MOODLE

RUN curl -O https://download.moodle.org/download.php/direct/stable400/moodle-4.0.1.tgz 
RUN tar xzf moodle-4.0.1.tgz

EXPOSE 80
    

