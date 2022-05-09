FROM php:7.2-apache

RUN apt-get update && \
	apt-get install -y curl ca-certificates && \
	apt-get clean

RUN curl -O https://download.moodle.org/download.php/direct/stable400/moodle-4.0.1.tgz 
RUN tar xzf moodle-4.0.1.tgz

EXPOSE 80
    

