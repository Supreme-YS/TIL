from django.contrib import admin

# Register your models here.

from django.contrib import admin
from .models import *
# Register your models here.

#----------------------< 공통 >----------------------
admin.site.register(SampleProduct)

#----------------------<심영석>-----------------------
admin.site.register(User)