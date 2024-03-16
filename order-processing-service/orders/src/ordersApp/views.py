import ast
from datetime import date
import json
import razorpay
from django.conf import settings
from django.db import connection
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from urllib3 import HTTPResponse
import logging
from .pulsar_mq.pulsar_producer import PulsarProducer
from django.core.cache import cache


def clean_lists(lst_of_dicts):
    dict = {}
    modifield_array = []
    for i in lst_of_dicts:
        if (type(i) == str):
            i = i.replace(" ", "")
        if (type(lst_of_dicts[i]) == str):
            lst_of_dicts[i] = lst_of_dicts[i].replace(" ", "")
        dict[i] = lst_of_dicts[i]
        modifield_array.append(dict)
    return modifield_array


@csrf_exempt
def getProducts(request):
    lst_of_dicts = None
    logger = logging.getLogger("logger")
    message = "Showing Logs"
    logger.info(message)
    cache_key = "all_products"
    lst_of_dicts = cache.get(key=cache_key)
    if lst_of_dicts is None:
        if (request.method == "POST"):
            getting_products = ''' select p.image, p.id, p.name, p.description, p.sku, p.price,p.modified_at, pc."name" as cat_name, pi2.quantity as stock, d.name as discount_package, d.discount_percent 
                                from product_management.products p
                                inner join product_management.product_category pc on pc.id = p.category_id 
                                inner join product_management.product_inventory pi2 on pi2.id  = p.inventory_id 
                                inner join product_management.discount d  on d.id = p.discount_id '''
            cursor = connection.cursor()
            cursor.execute(getting_products)
            columns = [col[0] for col in cursor.description]
            lst_of_dicts = [
                dict(zip(columns, row))
                for row in cursor.fetchall()
            ]
            logger = logging.getLogger("logger")
            message = json.dumps(lst_of_dicts, indent=4,
                                 sort_keys=True, default=str)
            logger.info(message)
            cache.set(
                key=cache_key,
                value=lst_of_dicts,
                timeout=60 * 2,  # in seconds (900s or 15min)
            )
    return JsonResponse({"resp": lst_of_dicts}, status=200)


@csrf_exempt
def getProductById(request, id):
    if (request.method == "POST"):
        getting_products = ''' select p.image, p.id, p.name, p.description, p.sku, p.price,p.modified_at, pc."name" as cat_name, pi2.quantity as stock, d.name as discount_package, d.discount_percent 
                            from product_management.products p
                            inner join product_management.product_category pc on pc.id = p.category_id 
                            inner join product_management.product_inventory pi2 on pi2.id  = p.inventory_id 
                            inner join product_management.discount d  on d.id = p.discount_id
                            where p.id != %s '''
        cursor = connection.cursor()
        cursor.execute(getting_products, (id,))
        columns = [col[0] for col in cursor.description]
        lst_of_dicts = [
            dict(zip(columns, row))
            for row in cursor.fetchall()
        ]

        logger = logging.getLogger("logger")
        message = {
            'lst_of_dicts': json.dumps(lst_of_dicts)
        }
        logger.info(message)
        return JsonResponse({"resp": lst_of_dicts}, status=200)


client = razorpay.Client(
    auth=('rzp_test_t0LPta6Aht96fl', 'CD2QelWa0ufY4lZFb6j36oOq'))


@csrf_exempt
def razorpay_order(request):
    logger = logging.getLogger("logger")
    message = ast.literal_eval(request.body.decode())
    logger.info(message)
    try:
        if (request.method == "POST"):
            amount = ast.literal_eval(request.body.decode())["amount"]
            productId = ast.literal_eval(request.body.decode())["product_id"]
            data = {
                'amount': amount * 100,
                'currency': "INR",
                'payment_capture': '1'
            }
            razorpay_order = client.order.create(data=data)
            today = date.today().strftime("%b-%d-%Y")
            producer_data = {
                "amount": amount,
                "today": today,
                "razor_order_id": razorpay_order["id"]
            }
            jsonFormat = json.dumps(producer_data)
            producer = PulsarProducer(
                'pulsar://192.168.225.205:6650', "initial_order_shipping_process")

            producer.send_message(jsonFormat)

            data = {
                "name": "Pallavi",
                "amount": amount,
                "currency": 'INR',
                "orderId": razorpay_order["id"],
                "productId": productId,
                "merchantId": "rzp_test_t0LPta6Aht96fl"
            }

            logger.info("data", data)

            return JsonResponse({"resp": data}, status=200)
    except Exception as e:
        print(e)
