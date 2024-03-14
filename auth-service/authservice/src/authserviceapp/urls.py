from django.urls import include, path
from . import views
from django.conf import settings

urlpatterns = [
    path('registeruser/', views.registeruser, name='registeruser'),
    path('loginUser/', views.loginUser, name='loginUser')
]