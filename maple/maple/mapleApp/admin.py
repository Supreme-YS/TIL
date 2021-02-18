from django.contrib import admin

# Register your models here.

from django.contrib import admin
from .models import *
# Register your models here.

#----------------------< 공통 >----------------------
admin.site.register(Menu)
admin.site.register(Staff)
admin.site.register(Order)
admin.site.register(OrderDetail)
admin.site.register(User)
admin.site.register(Info)
