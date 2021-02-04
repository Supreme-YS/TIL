from django.db import models
from django.utils import timezone
# Create your models here.

#----------------------< 공통 >----------------------
class SampleProduct(models.Model):
    pd_name = models.CharField(max_length=100)
    pd_price = models.IntegerField(default=0)
