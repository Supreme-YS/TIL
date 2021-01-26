from django.shortcuts import render

# Create your views here.

def index(request) :
    print('request index - ')
    return render(request , 'frontDemo.html' )


