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


class PulsarConsumer:
    client = Client('pulsar://192.168.225.205:6650',message_listener_threads=10)
    consumer = client.subscribe(
            'initial_order_shipping_process','initial_order_shipping_process',consumer_type=pulsar.ConsumerType.Shared) 

    def generate_custom_id(self):
        timestamp = str(int(time.time()))
        random_chars = ''.join(random.choices(
            string.ascii_uppercase + string.digits, k=6))
        return f"ID-{timestamp}-{random_chars}"

    def start_consuming(self):
        while True:
            msg = self.consumer.receive()
            self.consumer.acknowledge(msg)
            logger = logging.getLogger("logger")
            message = ast.literal_eval(msg.data().decode('utf-8'))
            logger.info(message)
            try:
                register_order = ''' INSERT INTO order_processing.order_details (user_id, amount, created_at, modified_at, razor_pay_order_id) VALUES(%s,%s,%s,%s,%s) '''
                cursor = connection.cursor()
                cursor.execute(register_order, (1, message["amount"], message["today"],
                            message["today"], message["razor_order_id"]))                
                # self.client.close()
                return JsonResponse({"message": "Message Stored Successfully"})

            except Exception as e:
                self.consumer.negative_acknowledge(msg)
                print('Failed to process message:', e)
                return e

            

            
