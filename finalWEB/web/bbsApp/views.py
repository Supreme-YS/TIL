from django.shortcuts import render, redirect
from .models import *

# Create your views here.

def index(request) :
    return render(request, 'login.html')

def loginProc(request) :
    print('request - loginProc')
    if request.method == 'GET' :
        return redirect('index')
    elif request.method == 'POST' :
        id  = request.POST['id']
        pwd = request.POST['pwd']
        # select * from bbsuserregister where user_id = id and user_pwd = pwd
        # orm class - table
        user = BbsUserRegister.objects.get(user_id=id, user_pwd=pwd)
        print('************ user result -', user)
        if user is not None :
            return render(request, 'home.html')
        else :
            return redirect('index')