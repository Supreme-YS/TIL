from django.http import JsonResponse
from django.shortcuts import render , redirect
from .models import *
from django.core.paginator import *
from datetime import datetime
from django.db.models import Max, functions
from django.core.paginator import Paginator
from django.db.models import Aggregate, CharField
from django.db.models import Sum, F

# ---------------------------
# 주문  저장
# ---------------------------
def saveOrder(request) :
    print('#> saveOrder :')
    # ---------------------------
    # 0. 브라우저에서 넘어오는 데이터 확인
    # ---------------------------
    mID = request.POST.getlist('hmid[]')
    mPrice = request.POST.getlist('hprice[]')
    mQty = request.POST.getlist('hqty[]')
    mAmount = request.POST.getlist('hsum[]')
    mPay = request.POST.get('payment')

    #주문되면 준비중으로 셋팅
    mStat = 'prep'

    print('mID ', mID)
    print('mPrice ', mPrice)
    print('mQty ', mQty)
    print('mAmount',mAmount)

    print('mPay ', mPay )
    print('mStat ', mStat)

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
    # print('new_orderno - ', new_orderno)

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
    ord = Order(orderno=new_orderno,
                orderdate=mDate,
                ordertime=mTime,
                payment=mPay,
                status = mStat)
    ord.save()
    print(ord)

    # -------------------------------
    # 4. OrderDetail 테이블 저장
    # -------------------------------
    # menuid는 menu테이블의 PK이기 때문에 아래와 같이 menuid를 menu테이블로부터 참조해서 가져와서 더 리스트에 담는 작업을 해야함
    menuList = []
    for i in range(len(mID)) :
        menu = Menu.objects.get(menuid=mID[i])
        menuList.append(menu)
    # print('menuList-----',menuList)
    print('----',mAmount[-1])

    for i in range(len(mID)):
        ordd = OrderDetail(
            orderno = ord,
            menuid = menuList[i],
            price = mPrice[i],
            qty = mQty[i],
            sales = int(mPrice[i]) * int(mQty[i]),
        )
        ordd.save()
        print(ordd)
    # ---------------------------------
    # return redirect('order')
    # 20210210 ysc 주문후 주문번호로 주문내역조회 추가
    # ---------------------------------
    # return redirect('order')
    return redirect('../order_link/'+new_orderno)