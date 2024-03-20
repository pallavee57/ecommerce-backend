#!/usr/bin/env python

#/usr/scheduler/email_sents.py
import ast
import os
import smtplib
import time
import uuid
from django.db import connection
from django.http import JsonResponse
import pulsar
from pulsar import Client
import random
import string
import logging

from email_connection import create_pulsarConn
from django.conf import settings
logger = logging.getLogger("logger")
import functools

settings.configure(DEBUG=True)
print("running")

consumer_ = create_pulsarConn('pulsar://192.168.225.205:6650','produce_emails_queue', "consume")
msg = consumer_.receive()

    
if msg is not None:
    consumer_.acknowledge(msg)
    message = ast.literal_eval(msg.data().decode('utf-8'))
    logger.info(message)
    try:
        if(message is not None):
            logger.info("Cron is running")
            username = 'pallavidapriya75@gmail.com'
            password = 'rrfz dfhp hrzr mlxz'
            server = smtplib.SMTP(host='smtp.gmail.com', port=587)
            server.ehlo()
            server.starttls()
            server.login(username, password)
            for email in message["recipient"]:
                server.sendmail(  message["email_from"], email,message["message"])
            
    except Exception as e:
        consumer_.negative_acknowledge(msg)
        print('Failed to process message:', e)





 


