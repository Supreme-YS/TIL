from django.urls import path
from . import views

urlpatterns = [
    path('register/', views.register), # localhost:8000/user/register
]
