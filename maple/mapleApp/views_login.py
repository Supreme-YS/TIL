import json

from django.http import JsonResponse, HttpResponse
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
        user = User.objects.get(user_id = id)
        # user = User.objects.get(user_id = id, user_pwd = pwd)
        if user.user_pwd == pwd:
            return redirect('order')  # 로그인 후 주문 페이지로 분기
        else :
            return render(request, 'index.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'index.html')
#-----------------------------------
# 로그아웃
#-----------------------------------
def logout(request):
    request.session['user_id'] = {}
    request.session['login'] = 'N'
    request.session.modified = True
    return redirect('index')

#20210216 ysc
#-----------------------------------
# 로그인 체크
#-----------------------------------
def loginCheck(request):
    print('#>loginCheck')
    template_name = 'index.html'
    request.session['loginOk'] = False
    try:
        data = request.POST
        inputId = data['username']
        inputPassword = data['password']

    except (KeyError,inputId == "",inputPassword == "") :
        context = {
            "username" : "empty",
            "password" : "empty",
        }
        return render(request,template_name,context)
    else :
        if User.objects.filter(user_id= inputId).exists():
            getUser = User.objects.get(user_id = inputId)
            if getUser.user_pwd == inputPassword :
                request.session['login'] = 'Y'
                request.session['user_id'] = inputId
                context = {
                    "login" : 'Y' ,
                    "result" : "로그인 성공"
                }
            else :
                request.session['login'] = 'N'
                request.session['user_id'] = ""
                context = {
                    "login": 'N',
                    "result" : "비밀번호가 틀렸습니다"
                }
        else :
            request.session['loginOk'] = 'N'
            context = {
                "login": 'N',
                "result" : "존재하지 않는 id입니다"
            }
        print('#>context',context)
        return HttpResponse(json.dumps(context),content_type="application/json")