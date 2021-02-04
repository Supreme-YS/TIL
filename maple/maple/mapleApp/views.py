from django.http import JsonResponse
from django.shortcuts import render , redirect
from django.contrib.auth.models import User
from django.contrib import auth
from .models import *
from django.core.paginator import *



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
def signup(request) :
    if request.method == 'POST' :
        if request.POST['password1'] == request.POST['password2'] :
            user = User.objects.create_user(request.POST['username'], password=request.POST['password1'])
            auth.login(request, user)
            return redirect('show')
    return render(request, 's_signup.html')


def login(request):
    if request.method =='POST' :
        username=request.POST['username']
        password=request.POST['password']
        user == auth.authenticate(request, username=username, password=password) # 등록된 회원인지 확인
        if user is not None :
            auth.login(request, user) # 로그인
            return redirect('show')
        else :
            return render(request, 'index.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'index.html')

def logout(request) :
    if request.method =='POST' :
        auth.logout(request)
        return redirect('home')
    return render(request, 'index.html')