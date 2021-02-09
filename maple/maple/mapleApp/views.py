from django.http import JsonResponse
from django.shortcuts import render , redirect
from django.contrib.auth.models import User
from django.contrib import auth
from django.core.paginator import *
from .models import *


#----------------------< 공통 : 메뉴이동>--------------------#

# landing / login
def index(request):
    return render(request,'index.html')

# order
def order(request):
    return render(request,'order.html')

# orderStatus
def orderStatus(request):
    return render(request,'orderStatus.html')

# menu
def menu(request):
    return render(request,'menu.html')

# staff
def staff(request):
    return render(request,'staff.html')

# salesStatus
def salesStatus(request):
    return render(request, 'salesStatus.html')

#----------------------< 심영석 >--------------------#

def registerForm(request):
    print('request - registerForm')
    return render(request, 's_registerForm.html')

def register(request):
    print('request - register')
    if request.method == 'POST' :
        # s_registerForm에서 넘어온 값들을 새로운 변수에 담고
        id = request.POST['id'] 
        pwd = request.POST['pwd']
        mail = request.POST['mail']
        # register에 User 클래스를 이용해서 각 객체에 담아서
        register = User(user_id=id, user_pwd=pwd, user_mail=mail)
        # 저장
        register.save()

    return render(request, 'index.html')


def login(request):
    print('request login - ')
    if request.method =='POST':
        id = request.POST['id']
        pwd = request.POST['pwd']
        # User == auth.authenticate(request, username=username, password=password) # 등록된 회원인지 확인
        user = User.objects.get(user_id = id, user_pwd = pwd)
        if user is not None :
            print('login ok ' , user) # 로그인 됐는지 체크여부
            return redirect('order')
        else :
            return render(request, 'index.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'index.html')


def logout(request):
    request.session['user_name'] = {}
    request.session['user_id'] = {}
    request.session.modified = True
    return redirect('index')  # render로 주면 logout이라는 주소값이 남아진다. 분기를 위해 redirect를 사용한 것

#----------------------< 김민재 >--------------------#

def order(request):
    # print('*> serchmenu :')
    menus = Menu.objects.all()
    print('menus', menus)
    context = {'menus': menus}
    print('-------------------------------------')

    return render(request, 'order.html', context)


def saveOrder(request) :
    mID = request.POST.get('menuId')
    mOrderno = request.POST.get('orderNo')
    mPrice = request.POST.get('mPrice')
    mQty = request.POST.get('mValue')
    print('request  saveOrder- ', mID, mOrderno, mPrice, mQty)

    # print('-------------------------')
    menus = Menu.objects.get(menuid=mID)
    menus.save()
    print(menus)
    # 저장했는데 왜 안됨 ㅡㅡ

    # order = Order.objects.get(orderno=mOrderno)
    # savodd = OrderDetail(
    #     menuid = menu.menuid,
    #     orderno = order.orderno,
    #     price = mPrice,
    #     qty = mQty
    # )
    # print(savodd)
    # savodd.save()
    #
    # print('------------------------')

    # mOrderno = request.POST.get('mOrderNo', '0')
    # mOrderDate = request.POST.get('now', '2021-02-06 10:01:00')
    # mPayment = request.POST.get('', 'card')
    # mStatus = request.POST.get('', 'order')
    # savod = Order(
    #     orderno = mOrderno,
    #     orderdate = mOrderDate,
    #     payment = mPayment,
    #     status = mStatus,
    # )
    # savod.save()

    return redirect('order')

def menu(request):
    return redirect('serchmenu')


def serchmenu(request):
    print('*> serchmenu :')
    menus = Menu.objects.all()
    print('menus', menus)
    # title  writer  content  regdata  viewcnt
    # print('*>producs -', type(producs), producs)
    context = {'menus': menus}

    menuName = request.POST.get('menuName', '0')
    return render(request, 'menu.html', context)


# 샘플CRUD - 입력
def insertmenu(request):
    print('*> insertmenu :')

    # Client 값 확인
    mId = request.POST.get('menuId','0')
    menuName = request.POST.get('menuName', '0')
    menuPrice = request.POST.get('menuPrice',0)
    print('--------------------------------',mId)



    # 데이터 저장
    pro = Menu(menuid=mId, menuname=menuName, price=menuPrice)
    pro.save()

    return redirect('serchmenu')
# 샘플CRUD - 수정
def updatemenu(request):
    print('*> updateProduct :')
    # Client 값 확인

    #id = request.POST['id']

    menuId = request.POST.get('menuId', 0)
    menuName=request.POST.get('menuName', '0')
    menuPrice=request.POST.get('menuPrice', 0 )

    print('request modify - ', menuId, menuName, menuPrice)

    # 데이터 수정
    men = Menu.objects.get(menuid=menuId)
    men.menuname = menuName
    men.price = menuPrice
    men.save()
    return redirect('serchmenu')

# menu- 삭제
def deletemenu(request):
    print('*> deleteProduct :')
    # Client 값 확인
    mId = request.POST.get('mId','0')
    print('request bbs_remove param - ' , mId)
    # 데이터 수정
    Menu.objects.get(menuid=mId).delete()
    #화면이동
    return redirect('serchmenu')