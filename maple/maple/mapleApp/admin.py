from django.contrib import admin

# Register your models here.
from django.contrib import admin

# Register your models here.

from django.contrib import admin
from .models import *
# Register your models here.

#----------------------< 공통 >----------------------
admin.site.register(SampleProduct)
admin.site.register(Info)


#----------------------< 김민재 >----------------------
admin.site.register(Order)
#----------------------< 심영석 >----------------------
admin.site.register(User)
#----------------------< 박우환 >----------------------
admin.site.register(OrderDetail)
#----------------------< 오은영 >----------------------
admin.site.register(Staff)
#----------------------< 정연욱 >----------------------
admin.site.register(Menu)
#----------------------< 최유숙 >----------------------
