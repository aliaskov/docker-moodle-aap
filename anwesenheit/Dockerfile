FROM python:3.9-slim-buster
WORKDIR /app

RUN apt-get update

COPY ./anwesenheit/* /app/

RUN pip install -r requirements.txt

ENV FLASK_APP=__main__

EXPOSE 5000

CMD ["flask", "run"]
