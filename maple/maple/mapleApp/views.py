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
    return render(request,'salesStatus.html')

#----------------------< 심영석 >--------------------#

def signupForm(request):
    print('request - signupForm')
    return render(request, 's_signup.html')

def signup(request):
    if request.method == 'POST' :
        user_name = request.post['username']
        pass_word = request.post['password']
        user_mail = request.post['usermail']
        register = User(username=user_name, password=pass_word, usermail=user_mail)
        register.save()
    return render(request, 'index.html')


def login(request):
    print('request login - ')
    if request.method =='POST':
        username = request.POST['username']
        password = request.POST['password']
        # User == auth.authenticate(request, username=username, password=password) # 등록된 회원인지 확인
        user = User.objects.get(username = username, password = password)
        if user is not None :
            # auth.login(request, user) # 로그인
            print('login ok ' , user) # 로그인 됐는지 체크여부
            return redirect('index') # 나중에 바꿔야 할 부분 -> menu 페이지로 넘어가야함
        else :
            return render(request, 'index.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'index.html')

def logout(request) :
    if request.method =='POST' :
        auth.logout(request)
        return redirect('index')
    return render(request, 'index.html')