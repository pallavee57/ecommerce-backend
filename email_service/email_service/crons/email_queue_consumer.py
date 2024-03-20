import ast
import time
import uuid
from django.db import connection
from django.http import JsonResponse
import pulsar
from pulsar import Client
import random
import string
import logging
from django.core.mail import send_mail

class EmailQueueConsumer:

    def start_consuming(self):

        while True:
            msg = self.consumer.receive()
            self.consumer.acknowledge(msg)
            logger = logging.getLogger("logger")
            message = ast.literal_eval(msg.data().decode('utf-8'))
            logger.info(message)
            try:
                send_mail( message["subject"], message["message"], message["email_from"], message["recipient"])
                

            except Exception as e:
                self.consumer.negative_acknowledge(msg)
                print('Failed to process message:', e)
                return e



            

            
