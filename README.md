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

## Start

1. `docker-compose up`
2. visit [localhost:5000](http://localhost:5000) (or to the specified moodle port in [docker-compose.yml](./docker-compose.yml))

## CAUTION

- The data is not persisted yet.
- SSL certificates are not yet supported.
