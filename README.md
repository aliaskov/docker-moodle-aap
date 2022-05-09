# Anwesenheit Deployment

This project runs all necessary parts of the `anwesenheit` app in a docker compose setup.

## Prerequisites

- [docker](https://docs.docker.com/get-docker/)
- [docker-compose](https://docs.docker.com/compose/install/)
- access to a version of `anwesenheit` app

## Installation

1. `cd anwesenheit` into [./anwesenheit/](./anwesenheit/)
2. `git clone https://github.com/wenig/anwesenheit.git` or any fork
3. `cd ..` into [./](./)
4. (maybe adapt the db credentials and ports in [docker-compose.yml](./docker-compose.yml))

## Start

1. `docker-compose up`
2. visit [localhost:5000](http://localhost:5000) (or to the specified moodle port in [docker-compose.yml](./docker-compose.yml))

## CAUTION

- There is still work to be done for the proxy to `anwesenheit` and using moodle as root
- The data is not persisted yet.
- SSL certificates are not yet supported.
