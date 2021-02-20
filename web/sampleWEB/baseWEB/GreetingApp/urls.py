
from django.contrib import admin
from django.urls import path , include
from GreetingApp import views

urlpatterns = [
    path('hi/', views.hi),
]