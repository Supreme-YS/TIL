from django.http import JsonResponse
from django.shortcuts import render , redirect
from .models import *
from django.core.paginator import *
# ----------------------< 심영석 >---------------------- #
# ----------------------< 회원가입 페이지 START >-------------------- #
def registerForm(request):
    return render(request, 'registerForm.html')


#-----------------------------------
# 회원등록 기능 START
#-----------------------------------
def register(request):
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

#-----------------------------------
# 로그인 기능
#-----------------------------------
def login(request):
    if request.method =='POST':
        id = request.POST['username']
        pwd = request.POST['password']
        user = User.objects.get(user_id = id, user_pwd = pwd)
        if user is not None :
            return redirect('order')  # 로그인 후 주문 페이지로 분기
        else :
            return render(request, 'index.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'index.html')

#-----------------------------------
# 로그아웃
#-----------------------------------
def logout(request):
    request.session['user_name'] = {}
    request.session['user_id'] = {}
    request.session.modified = True
    return redirect('index')
