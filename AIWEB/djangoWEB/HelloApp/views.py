from django.shortcuts import render, HttpResponse

# Create your views here.

# urls에 정의한 함수 이름을 사용하여 함수를 views에서 만든다.
def index(request):
    # return HttpResponse('*** 여기는 시작페이지 입니다. Hello World Guys. ***') # 이게 비효율적이라서, html template와 연결시킨다.
    # template와 연동시킬 수 있게 하는 함수 render
    context = {'ment' : '난 이 세계의 왕이다.'}
    return render(request, 'hello/index.html', context) # hello 라는 directory안에 있는 index html파일을 연동

def baseball(request) :
    return HttpResponse('*** THIS PAGE IS BASEBALL ***')
def football(request) :
    return HttpResponse('*** THIS PAGE IS FOOTBALL ***')
def basketball(request) :
    return HttpResponse('*** THIS PAGE IS BASKETBALL ***')

def login(request) :
    msg = request.POST['msg']
    print('param msg - ', msg)
    return HttpResponse('*** THIS PAGE IS LOGIN ***')