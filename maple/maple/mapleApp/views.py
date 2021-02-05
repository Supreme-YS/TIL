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
        # 저장했는데 왜 안됨 ㅡㅡ
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
            return redirect('index') # 나중에 바꿔야 할 부분 -> menu 페이지로 넘어가야함
        else :
            return render(request, 'index.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'index.html')


def logout(request):
    request.session['user_name'] = {}
    request.session['user_id'] = {}
    request.session.modified = True
    return redirect('index')  # render로 주면 logout이라는 주소값이 남아진다. 분기를 위해 redirect를 사용한 것










'''
def index(request):
    if request.session.get('user_id') and request.session.get('user_name'):
        context = {'id': request.session['user_id'],
                   'name': request.session['user_name']}
        return render(request, 'home.html', context)
    else:
        return render(request, 'login.html')


def logout(request):
    request.session['user_name'] = {}
    request.session['user_id'] = {}
    request.session.modified = True
    return redirect('index')  # render로 주면 logout이라는 주소값이 남아진다. 분기를 위해 redirect를 사용한 것


def loginProc(request):
    print('request - loginProc')
    if request.method == 'GET':
        return redirect('index')
    elif request.method == 'POST':
        id = request.POST['id']
        pwd = request.POST['pwd']
        # select * from bbsuserregister where user_id = id and user_pwd = pwd
        # orm class - table
        user = BbsUserRegister.objects.get(user_id=id, user_pwd=pwd)
        print('************ user result -', user)

        context = {}

        if user is not None:
            request.session['user_name'] = user.user_name
            request.session['user_id'] = user.user_id
            context['name'] = request.session['user_name']
            context['id'] = request.session['user_id']
            return render(request, 'home.html', context)
        else:
            return redirect('index')


def registerForm(request):
    print('request - registerForm')
    return render(request, 'join.html')


def register(request):
    # id, pwd, name 을 입력받아 -> model을 이용해 -> db(insert) 시키는 작업이 필요하다.
    if request.method == 'POST':
        id = request.POST['id']
        pwd = request.POST['pwd']
        name = request.POST['name']
        register = BbsUserRegister(user_id=id, user_pwd=pwd, user_name=name)
        register.save()

    return render(request, 'login.html')'''

