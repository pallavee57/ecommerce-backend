import ast
from datetime import date
import json
import logging
import random
import string
import time
from django.db import connection
from django.http import JsonResponse
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt

from .payments_connection import create_pulsarConn
from .send_emails import send_emails
logger = logging.getLogger("logger")


def generate_custom_id(self):
        timestamp = str(int(time.time()))
        random_chars = ''.join(random.choices(
            string.ascii_uppercase + string.digits, k=6))
        return f"ID-{timestamp}-{random_chars}"

def process_payment(response):
        if response["status"] == "succeeded":
            today = date.today().strftime("%b-%d-%Y")
   
            store_payment_details = ''' INSERT INTO payment_processing.payment_details (order_id, status, payment_id, created_at, modified_at) VALUES(%s,%s,%s,%s,%s) '''
            cursor = connection.cursor()
            cursor.execute(store_payment_details, (response["orderDetails"]["orderId"], "Success", response["orderDetails"]["paymentId"]["current"],
                                                   today, today))
            return JsonResponse({'status': 'Payment Done'}, status=200)
            # else:
            #     return JsonResponse({'status': 'Signature Mismatch!'}, status=400)

    #    {"status":"failed","orderDetails":{"paymentReason":"input_validation_failed","step":"payment_initiation","code":"BAD_REQUEST_ERROR"}}'
        elif response["status"] == "failed":
            paymentReason = response["orderDetails"]['paymentReason']
            step = response["orderDetails"]['step']
            code = response["orderDetails"]['code']
            store_payment_details = ''' INSERT INTO payment_processing.payment_details (order_id, status, payment_id, created_at, modified_at) VALUES(%s,%s,%s,%s,%s) '''
            cursor = connection.cursor()
            cursor.execute(store_payment_details, (0, "Failed", 0,
                                                   date.today().strftime("%b-%d-%Y"), date.today().strftime("%b-%d-%Y")))

            error_status = {
                'error_code': code,
                'error_description': paymentReason,
                'error_reason': step,
            }

            return JsonResponse({'error_data': error_status}, status=400)
        elif response["status"] == "Cancelled":

            return JsonResponse({'error_data': "Cancelled"}, status=200)
        elif response["status"] == "timedout":

            return JsonResponse({'error_data': "timedout"}, status=200)

@csrf_exempt
def razorpay_callback(request):
    if (request.method == "POST"):
        response = ast.literal_eval(request.body.decode())
        logger2 = logging.getLogger("logger")
        message2 = response
        logger2.info(message2)
        
        consumer = create_pulsarConn(
            'pulsar://192.168.225.205:6650', "initial_order_shipping_process","consume")

        msg = consumer.receive()
        consumer.acknowledge(msg)
        
        message = ast.literal_eval(msg.data().decode('utf-8'))
        logger.info(message)
        try:
            register_order = ''' INSERT INTO order_processing.order_details (user_id, amount, created_at, modified_at, razor_pay_order_id) VALUES(%s,%s,%s,%s,%s) '''
            cursor = connection.cursor()
            cursor.execute(register_order, (1, message["amount"], message["today"],
                        message["today"], message["razor_order_id"])) 
            
            for i in range(len(message["productId"])):
                    data = []
                    data.append(int(message["productId"][i]))
                    data.append(message["razor_order_id"])

                    print(type(data[1]), type(data[0]))
                    raw_query_2 = '''INSERT INTO order_processing.order_items (order_id, product_id, created_at, modified_at) VALUES(%s,%s,%s,%s)
                        '''
                    cursor2 = connection.cursor()
                    cursor2.execute(
                        raw_query_2, (data[1], data[0],date.today().strftime("%b-%d-%Y"),date.today().strftime("%b-%d-%Y")))

            
            process_payment(response)
            send_emails()
            return JsonResponse({"message": "Message Stored Successfully"})

        except Exception as e:
            consumer.negative_acknowledge(msg)
            print('Failed to process message:', e)
            return e
                
        


