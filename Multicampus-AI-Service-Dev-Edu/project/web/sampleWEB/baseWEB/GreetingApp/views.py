from django.shortcuts import render , HttpResponse

# Create your views here.

def hi(request) :
    return HttpResponse('<div align=center>Sup과 함께하는 장고 웹 </div>')
