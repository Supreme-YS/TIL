
from django.contrib import admin
from django.urls import path, include
from HelloApp    import views

urlpatterns = [
    # localhost:8000/hello/index
    path('index/', views.index),
    path('baseball/', views.baseball, name = 'base'),
    path('football/', views.football),
    path('basketball/', views.basketball),
    path('login/', views.login, name = 'msg'),
]
