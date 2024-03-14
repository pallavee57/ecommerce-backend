import ast
from datetime import date
import json
import logging
from django.db import connection
from django.http import JsonResponse
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from .pulsar_mq.pulsar_consumer import PulsarConsumer


@csrf_exempt
def razorpay_callback(request):

    if (request.method == "POST"):
        response = ast.literal_eval(request.body.decode())
        logger2 = logging.getLogger("logger")
        message2 = response
        if(response):
                conn = PulsarConsumer()
                conn.start_consuming()
        logger2.info(message2)
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
                                                   today, today))

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

