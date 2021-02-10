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

# landing / login
def index(request):
    return render(request,'index.html')


# orderStatus
def orderStatus(request):
    return render(request,'order_list.html')

# menu
def menu(request):
    return render(request,'menu.html')

# staff
def staff(request):
    staffs = Staff.objects.all()
    context = {'staffs' : staffs}
    return render(request, 'staff.html', context)

# salesStatus
def salesStatus(request):
    print('#>salesStatus')
    return render(request,'salesStatus.html')


#----------------------< sample >----------------------#

# 샘플CRUD - 상품관리
def sampleCrud(request):
    print('#> sampleCrud :')
    return redirect('serchProduct')

# 샘플CRUD - 상품조회
def serchProduct(request):
    print('#> serchProduct :')
    producs = SampleProduct.objects.all()
    context = {'producs': producs,}
    return render(request, 'sample_crud.html', context)

# 샘플CRUD - 입력
def insertProduct(request):
    print('#> insertProduct :')
    # Client 값 확인
    pdName=request.POST.get('pdName', '0')
    pdPrice=request.POST.get('pdPrice', 0)
    print('#> pdName, pdPrice :',pdName,pdPrice)
    # 데이터 저장
    pro=SampleProduct(pd_name = pdName,pd_price = pdPrice)
    pro.save()

    return redirect('serchProduct')

# 샘플CRUD - 수정
def updateProduct(request):
    print('#> updateProduct :')
    # Client 값 확인
    pID = request.POST.get('pID', 0)
    pdName = request.POST['pdName']
    pdPrice=request.POST.get('pdPrice', 0 )

    # 데이터 수정
    pro = SampleProduct.objects.get(id=pID)
    pro.pd_name = pdName
    pro.pd_price = pdPrice
    pro.save()

    #화면이동
    return redirect('serchProduct')


# 샘플CRUD - 삭제
def deleteProduct(request):
    print('#> deleteProduct :')
    # Client 값 확인

    pID = request.POST.get('pID', 0)
    print('request bbs_remove param -id ,pID ' , pID)

    # 데이터 삭제
    SampleProduct.objects.get(id=pID).delete()
    #화면이동
    return redirect('serchProduct')
