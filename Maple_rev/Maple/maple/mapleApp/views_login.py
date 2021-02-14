from django.http import JsonResponse
from django.shortcuts import render , redirect
from .models import *
from django.contrib.auth.models import User
from django.contrib import auth
from django.core.paginator import *


# ----------------------< 심영석 >---------------------- #
# ----------------------< 회원가입 페이지 START >-------------------- #
def registerForm(request):
    return render(request, 'registerForm.html')
# ----------------------< 회원가입 페이지 END >---------------------- #
# ----------------------< 회원등록 기능 START >-------------------- #
def register(request):
    if request.method == 'POST' :
        # registerForm에서 넘어온 값들을 새로운 변수에 담고
        id = request.POST['new_id']
        pwd = request.POST['new_pwd']
        mail = request.POST['new_mail']
        # register에 User 클래스를 이용해서 각 객체에 담아서
        register = User(user_id=id, user_pwd=pwd, user_mail=mail)
        # 저장
        register.save()
    return render(request, 'index.html')
# ----------------------< 회원등록 기능 END >-------------------- #
# ----------------------< 로그인 기능 START >-------------------- #
def login(request):
    if request.method =='POST':
        id = request.POST['username']
        pwd = request.POST['password']
        user = User.objects.get(user_id = id, user_pwd = pwd)
        if user is not None :
            return redirect('order')  # 로그인 후 주문 페이지로 분기
        elif user is None :
            return render(request, 'index.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'index.html')
# ----------------------< 로그인 기능 END >-------------------- #
# ----------------------< 로그아웃 기능 START >-------------------- #
def logout(request):
    request.session['user_name'] = {}
    request.session['user_id'] = {}
    request.session.modified = True
    return redirect('index')
# ----------------------< 로그아웃 기능 END >-------------------- #

def graph(request):
    data =[
        [
            "v65.0",
            0.4
        ],
        [
            "v64.0",
            1.3
        ],
        [
            "v63.0",
            53.02
        ],
        [
            "v62.0",
            1.4
        ],
        [
            "v61.0",
            0.88
        ],
        [
            "v60.0",
            0.56
        ],
        [
            "v59.0",
            0.45
        ],
        [
            "v58.0",
            0.49
        ],
        [
            "v57.0",
            0.32
        ],
        [
            "v56.0",
            0.29
        ],
        [
            "v55.0",
            0.79
        ],
        [
            "v54.0",
            0.18
        ],
        [
            "v51.0",
            0.13
        ],
        [
            "v49.0",
            2.16
        ],
        [
            "v48.0",
            0.13
        ],
        [
            "v47.0",
            0.11
        ],
        [
            "v43.0",
            0.17
        ],
        [
            "v29.0",
            0.26
        ]
    ]
    context = {'data' : data}
    return render(request, 'graph.html', context)

