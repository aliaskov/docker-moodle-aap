FROM php:7.2-apache

ARG SSL_CERTIFICATE_FILE
ARG SSL_CERTIFICATE_KEY_FILE
ARG SSL_CERTIFICATE_CHAIN_FILE

RUN apt-get update && \
	apt-get install -y curl ca-certificates && \
	apt-get clean

# PROXY

RUN a2enmod rewrite
RUN a2enmod headers
RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod ssl

COPY 000-default.conf /etc/apache2/sites-enabled/
COPY $SSL_CERTIFICATE_FILE /etc/ssl/1.crt
COPY $SSL_CERTIFICATE_KEY_FILE /etc/ssl/1.key
COPY $SSL_CERTIFICATE_CHAIN_FILE /etc/ssl/1.ca-bundle

RUN service apache2 restart

# INSTALL MOODLE

RUN curl -O https://download.moodle.org/download.php/direct/stable400/moodle-4.0.1.tgz 
RUN tar xzf moodle-4.0.1.tgz

EXPOSE 80
EXPOSE 443
