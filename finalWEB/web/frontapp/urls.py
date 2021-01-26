
from django.contrib import admin
from django.urls import path , include
from frontapp import views

urlpatterns = [
    path('main/', views.index),
    path('nonParamAjax/', views.nonAjax, name='nonParamAjax'),
]
