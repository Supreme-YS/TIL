from .models import *
from django.core.paginator import *
from django.http import JsonResponse
from django.shortcuts import render , redirect
from .models import *
from django.core.paginator import *
from datetime import datetime
# ysc  20210208
from django.db.models import Avg
from django.db.models import F
from django.db.models import Sum,Max

# ----------------------< 공통 : 메뉴이동>--------------------#

# landing / login
def index(request):
    return render(request, 'index.html')

# order
def order(request):
    return render(request, 'order.html')

# orderStatus
def orderStatus(request):
    return render(request, 'orderStatus.html')

# menu
def menu(request):
    return render(request, 'menu.html')

# staff
def staff(request):
    staffs  = Staff.objects.all()
    context = {'staffs' : staffs}
    return render(request, 'staff.html', context)

# salesStatus
def salesStatus(request):
    return render(request,'salesStatus.html')

# ----------------------< 김민재 >----------------------#
def order(request):
    # print('*> serchmenu :')
    menus = Menu.objects.all()
    # print('menus', menus)
    context = {'menus': menus}
    print('-------------------------------------')

    return render(request, 'order.html', context)


def saveOrder(request) :
    mID = request.POST.get('menuId','0')
    mOrderno = request.POST.get('orderNo', '0')
    mPrice = request.POST.get('mPrice', 0)
    mQty = request.POST.get('mValue', 0)
    print('request  saveOrder- ', mID ,mOrderno, mPrice, mQty)

    print('-------------------------')
    menu = Menu.objects.get(menuid=mID)
    print(menu)
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
# ----------------------< 심영석 >----------------------#

def registerForm(request):
    print('request - registerForm')
    return render(request, 's_registerForm.html')

def register(request):
    print('request - register')
    if request.method == 'POST' :
        # s_registerForm에서 넘어온 값들을 새로운 변수에 담고
        id = request.POST['new_id']
        pwd = request.POST['new_pwd']
        mail = request.POST['new_mail']
        # register에 User 클래스를 이용해서 각 객체에 담아서
        register = User(user_id=id, user_pwd=pwd, user_mail=mail)
        # 저장
        register.save()

    return render(request, 'index.html')


def login(request):
    print('request login - ')
    if request.method =='POST':
        id = request.POST['username']
        pwd = request.POST['password']
        # User == auth.authenticate(request, username=username, password=password) # 등록된 회원인지 확인
        user = User.objects.get(user_id = id, user_pwd = pwd)
        if user is not None :
            print('login ok ' , user) # 로그인 됐는지 체크여부
            return redirect('order')
        elif user is None :
            return render(request, 'form_errors.html')
        else :
            return redirect('index')
    else:
        return render(request, 'index.html')


def logout(request):
    request.session['user_name'] = {}
    request.session['user_id'] = {}
    request.session.modified = True
    return redirect('index')
# ----------------------< 박우환 >----------------------#
# ----------------------< 오은영 >----------------------#
def create_staff(request):
    staffid     = request.POST['staffid']
    staffname   = request.POST['staffname']
    jobtitle    = request.POST['jobtitle']
    startdate   = request.POST['startdate']
    phone       = request.POST['phone']
    staffs      = Staff(staffid=staffid, staffname=staffname, jobtitle=jobtitle,
                        startdate=startdate, phone=phone)
    staffs.save()
    return redirect('staff')

def update_staff(request):
    id = request.POST['id']
    staffid     = request.POST['staffid']
    staffname   = request.POST['staffname']
    jobtitle    = request.POST['jobtitle']
    startdate   = request.POST['startdate']
    phone       = request.POST['phone']
    staffs      = Staff.objects.get(id=id)
    staffs.staffid  = staffid
    staffs.staffname    = staffname
    staffs.jobtitle     = jobtitle
    staffs.startdate    = startdate
    staffs.phone        = phone
    staffs.save()
    return redirect('staff')

def delete_staff(request):
    id = request.POST['id']
    staffs = Staff.objects.get(id=id)
    staffs.delete()
    return redirect('staff')

# ----------------------< 정연욱 >----------------------#
# menu page
def menu(request):
    return redirect('serchmenu')

    #
def serchmenu(request):
    print('*> serchmenu :')
    menus = Menu.objects.all()
    print('menus', menus)
    # title  writer  content  regdata  viewcnt
    # print('*>producs -', type(producs), producs)
    context = {'menus': menus}


    return render(request, 'menu.html', context)

# 샘플CRUD - 입력
def insertmenu(request):
    print('*> insertmenu :')

    # Client 값 확인
    menuId = request.POST.get('menuId','0')
    menuName = request.POST.get('menuName', '0')
    menuPrice = request.POST.get('menuPrice',0)
    print(menuId, menuName, menuPrice)
    # 데이터 저장
    pro = Menu(menuid=menuId,menuname=menuName, price=menuPrice)
    pro.save()

    return redirect('serchmenu')
# 샘플CRUD - 수정
def updatemenu(request):
    print('*> updateProduct :')
    # Client 값 확인

    #id = request.POST['id']

    menuId = request.POST.get('menuId', '0')
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
    menuId = request.POST.get('menuId','0')
    print('request bbs_remove param - ' , menuId)
    # 데이터 수정
    Menu.objects.get(menuid=menuId).delete()
    #화면이동
    return redirect('serchmenu')

# ----------------------< 최유숙 >----------------------#
# ----------------------< sample >----------------------#
# 샘플화면
def sampleUi(request):
    print('*> sampleUi :')

    return render(request, 'sample_ui.html')


# 샘플CRUD - 상품관리
def sampleCrud(request):
    print('*> sampleCrud :')

    return redirect('serchProduct')


# 샘플CRUD - 상품조회
def serchProduct(request):
    print('*> serchProduct :')
    producs = SampleProduct.objects.all()
    # title  writer  content  regdata  viewcnt
    # print('*>producs -', type(producs), producs)
    context = {'producs': producs, }

    return render(request, 'sample_crud.html', context)


# 샘플CRUD - 입력
def insertProduct(request):
    print('*> insertProduct :')

    # Client 값 확인
    pdName = request.POST.get('pdName', '0')
    pdPrice = request.POST.get('pdPrice', 0)

    # 데이터 저장
    pro = SampleProduct(pd_name=pdName, pd_price=pdPrice)
    pro.save()

    return redirect('serchProduct')


# 샘플CRUD - 수정
def updateProduct(request):
    print('*> updateProduct ------:')
    # Client 값 확인

    pID = request.POST.get('pID', 0)
    pdName = request.POST['pdName']
    pdPrice = request.POST.get('pdPrice', 0)

    print('request modify - ', pdName, pdPrice, pID)

    # 데이터 수정
    pro = SampleProduct.objects.get(id=pID)
    pro.pd_name = pdName
    pro.pd_price = pdPrice
    pro.save()

    # 화면이동
    return redirect('serchProduct')


# 샘플CRUD - 삭제
def deleteProduct(request):
    print('*> deleteProduct :')
    # Client 값 확인

    pID = request.POST.get('pID', 0)
    print('request bbs_remove param -id ,pID ', pID)

    # 데이터 삭제
    SampleProduct.objects.get(id=pID).delete()
    # 화면이동
    return redirect('serchProduct')