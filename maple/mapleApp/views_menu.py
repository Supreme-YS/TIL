from django.http import JsonResponse
from django.shortcuts import render , redirect
from .models import *
#----------------------< 정연욱 >----------------------#
#-----------------------------------
# 메뉴 조회
#-----------------------------------
def serchmenu(request):
    print('#> serchmenu :')
    menus = Menu.objects.all()
    context = {'menus': menus}
    menuName = request.POST.get('menuName', '0')
    return render(request, 'menu.html', context)
#-----------------------------------
# 메뉴입력
#-----------------------------------
def insertmenu(request):
    print('#> insertmenu :')
    # Client 값 확인
    mId = request.POST.get('menuId','0')
    menuName = request.POST.get('menuName')
    menuPrice = request.POST.get('menuPrice')

    # 데이터 저장
    pro = Menu(menuid=mId, menuname=menuName, price=menuPrice)
    pro.save()
    return redirect('serchmenu')

#-----------------------------------
#  메뉴수정
#-----------------------------------
def updatemenu(request):
    print('#> updatemenu :')

    # Client 값 확인
    menuId = request.POST['menuId']
    menuName=request.POST['menuName']
    menuPrice=request.POST['menuPrice']

    # 데이터 수정
    men = Menu.objects.get(menuid=menuId)
    men.menuname = menuName
    men.price = menuPrice
    men.save()
    return redirect('serchmenu')

#-----------------------------------
# menu- 삭제
#-----------------------------------
def deletemenu(request):
    print('#> deletemenu :')
    # Client 값 확인
    mId = request.POST.get('mId','0')
    print('request bbs_remove param - ' , mId)
    # 데이터 수정
    Menu.objects.get(menuid=mId).delete()
    #화면이동
    return redirect('serchmenu')