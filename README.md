# Anwesenheit Deployment

This project runs all necessary parts of the `anwesenheit` app in a docker compose setup.

## Prerequisites

- [docker](https://docs.docker.com/get-docker/)
- [docker-compose](https://docs.docker.com/compose/install/)
- access to a version of `anwesenheit` app

## Installation

1. `git clone --recursive git@github.com:wenig/anwesenheit-deploy.git`
2. (maybe adapt the db credentials and ports in [docker-compose.yml](./docker-compose.yml))
3. (add the credentials from for the `anwesenheit` database to `config.json`)


## Prepare DB 
1. Backup DB with DBBackup.sh script. Modify USER PASSWORD and HOST parameters
2. Put DB dumps (anwesenheit.sql, moodle.sql and Users.sql) into db/ folder


## Start

1. `docker-compose up`
2. visit [localhost:5000](http://localhost:5000) (or to the specified moodle port in [docker-compose.yml](./docker-compose.yml))

## SSL

Read https://www.linkedin.com/pulse/use-apache-ssllets-encrypt-docker-leon-sczepansky

- SSL certificates on the server: 
 ```
SSLCertificateFile      /etc/ssl/certs/d322a6833f77f0c3.crt
SSLCertificateKeyFile /etc/ssl/private/moodle.kunstschuleberlin.key
SSLCertificateChainFile /etc/ssl/certs/gd_bundle-g2-g1.crt
```
volume mounts should be replaced with GH secrets ASAP