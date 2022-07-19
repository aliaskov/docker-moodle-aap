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

ENV LANG="en_US.UTF-8" \
    LANGUAGE="en_US:en" \
    LC_ALL="en_US.UTF-8"


# INSTALL MOODLE

#Legacy versions, the latest official update of Moodle per subversion
RUN curl -O https://download.moodle.org/stable37/moodle-3.7.9.tgz
#RUN curl -O https://download.moodle.org/stable38/moodle-3.8.9.tgz
#RUN curl -O https://download.moodle.org/stable310/moodle-3.10.11.tgz
#RUN curl -O https://download.moodle.org/stable311/moodle-3.11.8.tgz

# actual
#RUN curl -O https://download.moodle.org/stable400/moodle-4.0.2.tgz

RUN tar xzf moodle-*
RUN rm -f moodle-*

EXPOSE 80
EXPOSE 443
