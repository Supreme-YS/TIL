from django.http import JsonResponse
from django.shortcuts import render , redirect
from .models import *
from django.core.paginator import *
from datetime import datetime
from django.db.models import Max, functions
from django.core.paginator import Paginator
from django.db.models import Aggregate, CharField
from django.db.models import Sum, F



#----------------------< 김민재 >----------------------#

def order(request):
    # print('*> serchmenu :')
    menus = Menu.objects.all()
    # print('menus', menus)
    context = {'menus': menus}
    print('-------------------------------------')

    return render(request, 'order.html', context)


def saveOrder(request) :
    # ---------------------------
    # 1. orderno 채번
    # ---------------------------
    today = datetime.today()
    todate = datetime.strftime(today, '%Y-%m-%d')

    # 주문번호 : RYYYYMMDD + '00001'
    new_orderno = 'R' + datetime.strftime(today, '%Y%m%d') + '00001'

    # 주문번호 : 당일 주문  조회
    od = Order.objects.values('orderdate').filter(orderdate=todate).annotate(max_orderno=Max('orderno'))

    # 주문번호 : 당일 주문 있으면  다음번호 채번
    if od:
        a = od[0]['max_orderno']
        new_orderno = 'R' + datetime.strftime(today, '%Y%m%d') + str(int(a[9:]) + 1).zfill(5)
    print('new_orderno - ', new_orderno)

    # -------------------------------
    # 2. 날짜분할(orderdate, ordertime)
    # -------------------------------

    # 주문날짜(orderdate)
    mDate = datetime.strftime(today, '%Y-%m-%d')

    # 주문시간(ordertime)
    mTime = datetime.strftime(today, '%H:%M:%S')

    # -------------------------------
    # 3. Order 테이블 저장
    # -------------------------------
    mID = request.POST.getlist('hmid[]')
    mPrice = request.POST.getlist('hprice[]')
    mQty = request.POST.getlist('hqty[]')
    print('mID ', mID)
    print('mPrice ', mPrice)
    print('mQty ', mQty)
    print('-------------------------')


    # mDate = request.POST.get('hdate')
    # mTime = request.POST.get('htime')
    mPay = request.POST.get('hpay')
    mStat = request.POST.get('hstat')
    ord = Order(orderno=new_orderno, orderdate=mDate, ordertime=mTime, payment=mPay,
                               status = mStat)
    ord.save()
    print(ord)

    # -------------------------------
    # 4. OrderDetail 테이블 저장
    # -------------------------------
    for i in range(len(mID)) :
        menu = Menu.objects.get(menuid=mID[i])
        # print('menu',menu)

    for i in range(len(mID)) :
        ordd = OrderDetail(
            orderno = ord,
            menuid = menu,
            price = mPrice[i],
            qty = mQty[i],
        )
        ordd.save()
    # ---------------------------------
    return redirect('order')
