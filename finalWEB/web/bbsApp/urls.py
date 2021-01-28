
from django.contrib import admin
from django.urls import path , include
from bbsApp import views


urlpatterns = [
    path('index/', views.index, name='index'),
    path('login/', views.loginProc, name='login'),
    path('registerForm/', views.registerForm, name='registerForm'),
    path('register/', views.register, name='register'),
    path('logout/', views.logout, name='logout')
]
