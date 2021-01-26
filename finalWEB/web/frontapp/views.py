from django.shortcuts import render
from django.http      import JsonResponse

# Create your views here.

def index(request) :
    print('request index - ')
    return render(request , 'frontDemo.html' )

def nonAjax(request) :
    print('request ajax nonAjax')
    list = [{'id': 'multicampusID04', 'pwd': 'multicampusPWD04'},
            {'id': 'multicampusID05', 'pwd': 'multicampusPWD05'}]

    return JsonResponse(list, safe=False)

def paramAjax(request) :
    id =  request.POST['user_id']
    pwd = request.POST['user_pwd']
    print('ajax param - ', id, pwd)

    list = [{'id': 'multicampusID04', 'pwd': 'multicampusPWD04'},
            {'id': 'multicampusID05', 'pwd': 'multicampusPWD05'}]

    return JsonResponse(list, safe=False)

def chart(request) :
    context = {'msg' : [2,3,4,5]}
    return render(request, 'chartDemo.html', context)
