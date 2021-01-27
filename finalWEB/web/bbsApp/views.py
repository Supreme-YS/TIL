from django.shortcuts import render, redirect

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
        if id == 'yssim' and pwd == 'yssim' :
            return render(request, 'home.html')
        else :
            return redirect('index')