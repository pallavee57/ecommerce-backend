import logging
from pulsar import Client


class PulsarProducer:
    def __init__(self, service_url, topic):
        self.client = Client(service_url)
        self.producer = self.client.create_producer(topic)

    def send_message(self, message):
        logger = logging.getLogger("logger")
        message = message
        logger.info( message)
        self.producer.send_async(message.encode('utf-8'),None)
        self.producer.flush()
        self.client.close()

