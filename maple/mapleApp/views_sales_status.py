from django.http import JsonResponse
from django.shortcuts import render , redirect
from .models import *
from django.core.paginator import *
from datetime import datetime
from django.db.models import Avg
from django.db.models import F
from django.db.models import Sum,Max

#----------------------< 최유숙 >----------------------#
#-----------------------------------
# 매출 현황 조회
#-----------------------------------
def serchStatus(request):
    print('#>serchStatus:')
    # 파라미터
    report = request.POST.get('report','')
    startdate = request.POST.get('startdate','')
    enddate = request.POST.get('enddate','')

    # 매출현황 조회
    query={}
    # 'r_date' 일별 매출 현황
    if report == 'r_date' :
        query = {
            'date': F('orderno__orderdate'),
            'menu': Max('menuid'),
            'total_qty': Sum('qty'),
            'total_price': Sum('price')
        }
        orderDetails = OrderDetail.objects.values('orderno__orderdate').filter(orderno__orderdate__range=[startdate, enddate]).annotate(**query).order_by('orderno__orderdate')

    # 'r_menui' 메뉴뱔 매출 현황
    else :
        query = {
            'date': Max('orderno__orderdate'),
            'menu':  F('menuid__menuname'),
            'total_qty': Sum('qty'),
            'total_price': Sum('price')
        }
        orderDetails = OrderDetail.objects.values('menuid').filter(orderno__orderdate__range=[startdate, enddate]).annotate(**query).order_by('menuid')

    # 차트 데이터
    maple_data  =[]
    for od in orderDetails :
        # 일자별
        if report == 'r_date' :
            maple_data.append([od['date'],od['total_price']])
        # 메뉴별
        else :
            maple_data.append([od['menu'],od['total_price']])


    # context  setting
    context = {'orderDetails': orderDetails ,
               'startdate':startdate,
               'enddate':enddate,
               'report':report ,
               'maple_data' : maple_data
               }

     # print('maple_data-',maple_data)
    return render(request, 'sales_status.html', context)