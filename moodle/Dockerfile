FROM httpd:2.4

RUN wget https://download.moodle.org/download.php/stable400/moodle-4.0.1.tgz && \
	tar xzf moodle-4.0.1.tgz && \
	mv moodle-4.0.1/* /var/www/html/

EXPOSE 80
    

