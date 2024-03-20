
import pulsar
from pulsar import Client
def create_pulsarConn(service_url, diff, ind):
    client = Client(service_url)


    if diff == "produce_emails_queue" and ind == "produce":
        producer_produce_email_queue = client.create_producer(diff)
        return producer_produce_email_queue
    elif diff == "produce_emails_queue" and ind == "consume":
        consumer_produce_email_queue = client.subscribe(
           'produce_emails_queue','produce_emails_queue',consumer_type=pulsar.ConsumerType.Shared) 
        return consumer_produce_email_queue
    
    elif diff == "initial_order_shipping_process" and ind == "produce":
        producer_initial_order_shipping_process_1 = client.create_producer(diff)
        return producer_initial_order_shipping_process_1
    elif diff == "initial_order_shipping_process" and ind == "consume":
        consumer_initial_order_shipping_process_1 = client.subscribe(
            'initial_order_shipping_process','initial_order_shipping_process',consumer_type=pulsar.ConsumerType.Shared) 
        return consumer_initial_order_shipping_process_1