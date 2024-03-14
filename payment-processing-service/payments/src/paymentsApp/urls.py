from django.urls import include, path
from . import views


urlpatterns = [
     path('razorpay_callback/', views.razorpay_callback, name='razorpay_callback'),
]
