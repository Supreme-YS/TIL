
from django.contrib import admin
from django.urls import path, include
from HelloApp    import views

urlpatterns = [
    # localhost:8000/hello/index
    path('index/', views.index),
]
