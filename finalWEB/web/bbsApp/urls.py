
from django.contrib import admin
from django.urls import path , include
from bbsApp import views


urlpatterns = [
    path('index/', views.index, name='index'),
    path('login/', views.loginProc, name='login'),
    path('registerForm/', views.registerForm, name='registerForm'),
    path('register/', views.register, name='register'),
    path('logout/', views.logout, name='logout'),
    path('bbs_list/', views.bbs_list, name='bbs_list'),
    path('bbs_registerForm/', views.bbs_registerForm, name='bbs_registerForm'),
    path('bbs_register/', views.bbs_register, name='bbs_register'),
    path('bbs_read/<int:id>', views.bbs_read, name='bbs_read'), # get 방식일 때.
    path('bbs_remove/', views.bbs_remove, name='bbs_remove'),
    path('bbs_modifyForm/', views.bbs_modifyForm, name='bbs_modifyForm'),
    path('bbs_modify/', views.bbs_modify, name='bbs_modify')
]
