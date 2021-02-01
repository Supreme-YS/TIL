from django.contrib import admin
from django.urls import path , include
from chartApp import views

urlpatterns = [
    path('index/', views.intro, name='index'),
    path('line/', views.line, name='line'),
]