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
    request.session['user_id'] = {}
    request.session['login'] = 'N'
    request.session.modified = True

    return render(request,'index.html')


#-----------------------------------
#주문
#-----------------------------------
def order(request):
    #세션정보가 없으면 login page로
    if request.session.get('login')=='N':
        return redirect(index)

    menus = Menu.objects.all()
    context = {'menus': menus}
    return render(request, 'order.html', context)

#-----------------------------------
# 주문현황
#-----------------------------------
def orderStatus(request):
    #세션정보가 없으면 login page로
    if request.session.get('login')=='N':
        return redirect(index)
    
    return render(request,'order_list.html')

#-----------------------------------
# 판매현황
#-----------------------------------
def salesStatus(request):
    #세션정보가 없으면 login page로
    if request.session.get('login')=='N':
        return redirect(index)
    
    return redirect('searchStatus')
#-----------------------------------
# 메뉴관리
#-----------------------------------
def menu(request):
    #세션정보가 없으면 login page로
    if request.session.get('login')=='N':
        return redirect(index)
    
    return redirect ('serchmenu')

#-----------------------------------
# 직원관리
#-----------------------------------
def staff(request):
    #세션정보가 없으면 login page로
    if request.session.get('login')=='N':
        return redirect(index)
    
    staffs = Staff.objects.all()
    context = {'staffs' : staffs}
    return render(request, 'staff.html', context)


