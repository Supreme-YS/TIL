from django.shortcuts import render, redirect
from .models import *

# Create your views here.

# --------------------SQL 문법과 ORM 문법의 비교-------------------- #

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
# -> model(attr=value, attr=value)
# -> model.save()

# delete * from tableName where id = xxxx
# -> modelName.objects.get(id=xxxx).delete()

# update tableName set attr = value where id = xxxx
# -> obj = modelName.objects.get(id=xxxx)
# -> obj.attr = value
# -> obj.save() --commit


# 사용자의 상태정보 저장을 위해서는 session, cookie

def index(request) :
    if request.session.get('user_id') and request.session.get('user_name') :
        context = {'id'  : request.session['user_id'],
                   'name': request.session['user_name']}
        return render(request, 'home.html', context)
    else :
        return render(request, 'login.html')

def logout(request) :
    request.session['user_name'] = {}
    request.session['user_id']   = {}
    request.session.modified     = True
    return redirect('index') # render로 주면 logout이라는 주소값이 남아진다. 분기를 위해 redirect를 사용한 것

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

        context = {}

        if user is not None :
            request.session['user_name'] = user.user_name
            request.session['user_id'] = user.user_id
            context['name'] = request.session['user_name']
            context['id']   = request.session['user_id']
            return render(request, 'home.html', context)
        else :
            return redirect('index')

def registerForm(request) :
    print('request - registerForm')
    return render(request, 'join.html')

def register(request):
    # id, pwd, name 을 입력받아 -> model을 이용해 -> db(insert) 시키는 작업이 필요하다.
    if request.method == 'POST':
        id    = request.POST['id']
        pwd   = request.POST['pwd']
        name  = request.POST['name']
        register = BbsUserRegister(user_id = id, user_pwd = pwd, user_name = name)
        register.save()

    return render(request, 'login.html')

# bbs
def bbs_list(request) :

    # select * from bbs ;
    # modelName.objects.all()
    boards = Bbs.objects.all()
    print('bbs_list request - ', type(boards), boards)
    context = {'boards': boards,
               'name': request.session['user_name'],
               'id': request.session['user_id']}
    return render(request, 'list.html', context)

def bbs_registerForm(request) :
    print('request bbs_registerForm - ')
    context = {'name': request.session['user_name'],
               'id': request.session['user_id']}
    return render(request, 'bbsRegisterForm.html', context)

def bbs_register(request) :
    print('request bbs_register -')
    title   = request.POST['title']
    content = request.POST['content']
    writer  = request.POST['writer']
    print('request bbs_register - ', title, content, writer)

    # insert into table values(title, content, writer)
    board = Bbs(title = title, content = content, writer = writer)
    board.save()

    return redirect('bbs_list')


def bbs_read(request, id) :
    print('request bbs_read param id -', id)
    # select * from bbs where id = id
    # update table set viewcnt = viewcnt +1 where id = id
    board = Bbs.objects.get(id = id)
    board.viewcnt = board.viewcnt + 1
    board.save() # commit 시켜버리기

    print('request bbs_read result -', board)

    context = {'board' : board,
               'name': request.session['user_name'],
               'id': request.session['user_id']
               }

    return render(request, 'read.html', context)

def bbs_remove(request):
    id = request.POST['id']
    print('request bbs_remove param - ', id)
    # delete from table where id = id
    Bbs.objects.get(id=id).delete()
    return redirect('bbs_list')

def bbs_modifyForm(request):
    id = request.POST['id']
    print('request bbs_modifyForm param - ', id)
    board = Bbs.objects.get(id=id)
    context = {'board' : board,
               'name': request.session['user_name'],
               'id': request.session['user_id']
               }
    return render(request, 'modify.html', context)

def bbs_modify(request) :
    id = request.POST['id']
    title = request.POST['title']
    content = request.POST['content']
    writer = request.POST['writer']
    print('request bbs_modify param - ', id, title, content, writer)
    board = Bbs.objects.get(id=id)
    board.title = title
    board.content = content
    board.save()

    return redirect('bbs_list')
