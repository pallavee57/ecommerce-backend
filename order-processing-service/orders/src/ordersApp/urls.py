from django.urls import include, path
from . import views


urlpatterns = [
    path('getProducts/', views.getProducts, name='getProducts'),
    path('getProductById/', views.getProductById, name='getProductById'),
    path('razorpay_order/', views.razorpay_order, name='razorpay_order'),
    path('get_people_also_bought/', views.get_people_also_bought, name='get_people_also_bought'),
    path('get_products_by_id/', views.get_products_by_id, name='get_products_by_id'),
]
