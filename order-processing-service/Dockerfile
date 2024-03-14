FROM python:3.13.0a4
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY orders/src /code/
RUN ln -sf /dev/stdout /code/logs/app.log
# RUN python manage.py collectstatic --noinput
EXPOSE 8002