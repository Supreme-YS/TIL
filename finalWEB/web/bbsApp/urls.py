
from django.contrib import admin
from django.urls import path , include
from bbsApp import views


urlpatterns = [
    path('index/', view.index, name='index'),
]
