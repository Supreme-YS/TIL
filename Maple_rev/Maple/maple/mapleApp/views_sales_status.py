from django.http import JsonResponse
from django.shortcuts import render , redirect
from .models import *
from django.core.paginator import *
from datetime import datetime
# ysc  20210208
from django.db.models import Avg
from django.db.models import F
from django.db.models import Sum,Max

#----------------------< 최유숙 >----------------------#
# Create your views here.
# Create your views here.
def line(request) :
 pass


    # 상품조회
def serchStatus(request):
    # join  https: // livetodaykono.tistory.com / 53
     # jon  https://medium.com/chrisjune-13837/%EB%8B%B9%EC%8B%A0%EC%9D%B4-%EB%AA%B0%EB%9E%90%EB%8D%98-django-prefetch-5d7dd0bd7e15
     # group  https://lqez.github.io/blog/django-queryset-basic.html
    # 프리페치 릴레이티드 https://wave1994.tistory.com/70

    report = request.POST.get('report','')
    startdate = request.POST.get('startdate','')
    enddate = request.POST.get('enddate','')

    print('report-', report)
    # 일별 매출 현황
    # if report is 'r1' :


    # 'r1' 일별 매출 현황
    if report == 'r1' :
        query = {
            'date': F('orderno__orderdate'),
            'menu': Max('menuid'),
            'total_qty': Sum('qty'),
            'total_price': Sum('price'),
        }
        orderDetails = OrderDetail.objects.values('orderno__orderdate').filter(orderno__orderdate__range=[startdate, enddate]).annotate(**query).order_by('orderno__orderdate')

    # 'r1' 메뉴별 매출 현황
    if report == 'r2' :
        query = {
            'date': Max('orderno__orderdate'),
            'menu':  F('menuid__menuname'),
            'total_qty': Sum('qty'),
            'total_price': Sum('price'),
        }
        orderDetails = OrderDetail.objects.values('menuid').filter(orderno__orderdate__range=[startdate, enddate]).annotate(**query).order_by('menuid')

    # categories = TB.objects.values('category_seq').annotate(Count('category_seq'))
    # .aggregate(Avg('score'))

    print('------orderDetails ------------')
    # print(orderDetails )
    # print(orderDetails.sales.avg)

    # order_qs = orderDetails.objects.values(
    #     'orderno', 'order__orderdate', 'menu__menuname','price','pty'
    # )
    date = []
    menu = []
    total_price = []


    for od in orderDetails :
        date.append(od['date'])
        menu.append(od['menu'])
        total_price.append(od['total_price'])

        # 일자별
        # if report == 'r1' :
        #     date.append(od['date'])
        # # 날짜별
        # else :
        #     menu.append(od['menu'])

        population= [
            ['Shanghai', 24.2],
            ['Beijing', 20.8],
            ['Karachi', 14.9],
            ['Shenzhen', 13.7],
            ['Guangzhou', 13.1],
            ['Istanbul', 12.7],
            ['Mumbai', 12.4],
            ['Moscow', 12.2],
            ['São Paulo', 12.0],
            ['Delhi', 11.7],
            ['Kinshasa', 11.5],
            ['Tianjin', 11.2],
            ['Lahore', 11.1],
            ['Jakarta', 10.6],
            ['Dongguan', 10.6],
            ['Lagos', 10.6],
            ['Bengaluru', 10.3],
            ['Seoul', 9.8],
            ['Foshan', 9.3],
            ['Tokyo', 9.3],
        ]

    print('#>total_price - ', total_price)
    print('#>categories - ', population)

    context = {'orderDetails': orderDetails,
               'startdate':startdate,
               'enddate':enddate,
               'report':report ,
               'price': total_price,
               'population' : population,
               }

    print('#>population--', population)
    return render(request, 'salesStatus.html', context)