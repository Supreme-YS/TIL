from django.http import JsonResponse
from django.shortcuts import render , redirect
from .models import *
from django.core.paginator import *
from datetime import datetime
from django.db.models import Max, functions
from django.core.paginator import Paginator
from django.db.models import Aggregate, CharField
from django.db.models import Sum, F


#----------------------< 공통 : 메뉴이동>--------------------#

#-----------------------------------
# landing / login
#-----------------------------------
def index(request):
    return render(request,'index.html')

#-----------------------------------
#주문
#-----------------------------------
def order(request):
    menus = Menu.objects.all()
    context = {'menus': menus}
    return render(request, 'order.html', context)

#-----------------------------------
# 주문현황
#-----------------------------------
def orderStatus(request):
    return render(request,'order_list.html')

#-----------------------------------
# 주문관리
#-----------------------------------
def salesStatus(request):
    # print('#>salesStatus')
    return render(request,'sales_status.html')

#-----------------------------------
# 메뉴관리
#-----------------------------------
def menu(request):
    return redirect ('serchmenu')

#-----------------------------------
# 직원관리
#-----------------------------------
def staff(request):
    staffs = Staff.objects.all()
    context = {'staffs' : staffs}
    return render(request, 'staff.html', context)


