from django.shortcuts import render, redirect
from .models import *

# Create your views here.
# select * from table;
# -> modelName.objects.all()

# select * from table where id = xxxx;
# -> modelName.objects.get(id = xxxx)
# -> modelName.objects.filter(id = xxxx)

# select * from table where id = xxxx and pwd = xxxx;
# -> modelName.objects.get(id = xxxx, pwd = xxxx)
# -> modelName.objects.filter(id = xxxx, pwd = xxxx)

# select * from table where id = xxxx or pwd = xxxx;
# -> modelName.objects.filter(Q(id = xxxx) | Q(pwd = xxxx))

# select * from table where subject like '%공지%' '공지'를 포함하는 단어
# -> modelName.objects.filter(subject_icontains='공지')

# select * from table where subject like '공지%' # '공지'로 시작하는 단어
# -> modelName.objects.filter(subject_startswith='공지')

# select * from table where subject like '%공지' # '공지'로 끝나는 단어
# -> modelName.objects.filter(subject_endswith='공지')

# insert into table values()
# model(attr=value, attr=value)
# model.save()


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