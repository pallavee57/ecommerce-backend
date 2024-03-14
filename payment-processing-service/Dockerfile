FROM python:3.8.2
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY payments/src /code/
# RUN ln -sf /dev/stdout /code/logs/app.log
EXPOSE 8001