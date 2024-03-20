import ast
from http.client import HTTPResponse
import json
import logging
import ssl
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from datetime import datetime

from .payments_connection import create_pulsarConn

logger2 = logging.getLogger("logger")

def send_emails():
    # Create the plain-text and HTML version of your message
    text = """\
    Hi,
    How are you?
    This is incredible sending the emails"""
    html = """\
    <html>
    <body>
        <p>Hi,<br>
        How are you?<br>
        This is incredible sending the emails
        </p>
    </body>
    </html>
    """

    # Turn these into plain/html MIMEText objects
    part1 = MIMEText(text, "plain")
    part2 = MIMEText(html, "html")

    from_email = 'pallavidapriya75@gmail.com'
    to_emails = ['priyaarshinipallavi@gmail.com']
   
    msg = MIMEMultipart('alternative')
    msg['From'] = from_email
    msg['To'] = ", ".join(to_emails)
    msg['Subject'] = "multipart test"
    msg.attach(part1)
    msg.attach(part2)
 

    producer_data={
        "message":msg.as_string(),
        "email_from":from_email,
        "recipient":to_emails
    }
    jsonFormat = json.dumps(producer_data)
    producer_1 = create_pulsarConn(
        'pulsar://192.168.225.205:6650', "produce_emails_queue", "produce")
    producer=producer_1
    logger = logging.getLogger("logger")
    message = jsonFormat
    logger.info( message)
    producer.send_async(message.encode('utf-8'),None)
    producer.flush()


    