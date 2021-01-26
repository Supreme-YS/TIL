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

