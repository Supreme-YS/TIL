from django.shortcuts import render

# Create your views here.

def index(request) :
    return render(request, 'login.html')

def loginProc(request) :
    return render(request, 'home.html')