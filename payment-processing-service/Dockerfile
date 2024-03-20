FROM python:3.12.2-slim-bookworm
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt /code/
RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2
RUN pip install psycopg2-binary
RUN pip install pulsar-client==3.4.0
RUN pip install -r requirements.txt


COPY payments/src /code/
COPY payments/manage.py /code/manage.py

EXPOSE 8001

 