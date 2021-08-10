from django.contrib import admin
from django.urls import path , include
from HiApp import views

urlpatterns = [
    path('hi/', views.hi),
]