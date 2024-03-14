from django.urls import include, path
from . import views


urlpatterns = [
    path('getProducts/', views.getProducts, name='getProducts'),
    path('getProductById/', views.getProductById, name='getProductById'),
    path('razorpay_order/', views.razorpay_order, name='razorpay_order'),

]
