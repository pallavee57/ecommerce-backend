from datetime import date
import hashlib
import json
from django.http import JsonResponse
from django.shortcuts import render
from django.db import connection
import requests


def loginUser(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        userpassword = request.POST.get('password')
        checking_user = '''select email from users_management.users where email = %s'''
        cursor2 = connection.cursor()
        cursor2.execute(checking_user, (email,))
        existing_user = cursor2.fetchone()
        if (existing_user == None):
            return JsonResponse({"resp": "Bad Request! You Dont Exists In the data base, please register"}, status=400)
        else:
            payload = {
                "username": email,
                "password": userpassword
            }
        json_payload = json.dumps(payload)
        checking_password = '''select password from users_management.users where email = %s'''
        cursor3 = connection.cursor()
        cursor3.execute(checking_password, (email,))
        stored_hash = cursor3.fetchone()

        converted = hashlib.sha256(userpassword.encode('utf-8')).hexdigest()
        if (converted == stored_hash[0]):
            r = requests.post(
                'http://127.0.0.1:8000/apis/token/', data=json_payload, headers={"Content-Type": "application/json"})

            request.session["access"] = r.json()["access"]
            request.session["refresh"] = r.json()["refresh"]
            get_user = '''select id from users_management.users where email = %s'''
            cursor2 = connection.cursor()
            cursor2.execute(get_user, (email,))
            existing_user = cursor2.fetchone()
            request.session["existing_user"] = existing_user[0]
            return JsonResponse({"access": r.json()["access"], "refresh": r.json()["refresh"]}, status=200)
        else:
            return JsonResponse({"resp": "Bad Request! You Dont Exists In the data base, please register"}, status=400)

    else:
        return render(request, 'login.html', {})


def encode_password(password):
    password_bytes = password.encode('utf-8')
    hash_object = hashlib.sha256(password_bytes)
    return hash_object.hexdigest()


def registeruser(request):

    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')
        phone = request.POST.get('phone')
        address = request.POST.get('address')
        state = request.POST.get('state')
        city = request.POST.get('city')
        zipcode = request.POST.get('zipcode')
        today = date.today().strftime("%b-%d-%Y")

        checking_email = '''select email from users_management.users where phone = %s'''
        cursor3 = connection.cursor()
        cursor3.execute(checking_email, (phone,))

        if len(cursor3.fetchall()) != 0:
            return JsonResponse({"resp": "Bad Request! You Exists In the data base, please login"}, status=400)
        else:
            enoded = encode_password(password)
            raw_query = '''INSERT INTO users_management.users (name, email, phone,password, created_at, modified_at) VALUES(%s,%s,%s,%s,%s,%s)'''
            cursor = connection.cursor()
            cursor.execute(
                raw_query, (email, email, phone, enoded, today, today))

            raw_query_2 = '''INSERT INTO users_management.user_address (user_id, address, state,city,zipcode) 
            VALUES((select id from users_management.users where email = %s),%s, %s,%s,%s)'''
            cursor2 = connection.cursor()
            cursor2.execute(
                raw_query_2, (email, address, state, city, zipcode))

            return JsonResponse({"resp": "Users Registered"}, status=200)

    else:
        return render(request, 'signup.html', {})
