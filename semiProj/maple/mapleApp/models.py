from django.db import models

# Create your models here.

class UserInfo(models.Model):
    username = models.CharField(max_length=50)
    userid   = models.CharField(max_length=20)
    userpw   = models.CharField(max_length=20)