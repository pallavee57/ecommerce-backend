FROM alpine:3.15


# Install required packages
RUN apk add --update --no-cache bash dos2unix

# Install python/pip
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip --upgrade
ENV PYTHONUNBUFFERED=1
# install any Python requirements used by the jobs
RUN pip3 install colorama

WORKDIR /usr/scheduler

# Copy files
COPY crons ./
RUN pip3 install -r requirements.txt

RUN dos2unix email_sents.* \
    && \
    find . -type f -iname "*.sh" -exec chmod +x {} \;

# Run cron on container startup
CMD ["./start.sh"]


# COPY crons/email_sents.* ./
# COPY crons/crontab.Development ./
# COPY crons/start.sh .
# RUN apt-get install -y cron
# Fix line endings && execute permissions