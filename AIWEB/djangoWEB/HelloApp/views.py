from django.shortcuts import render, HttpResponse

# Create your views here.

# urls에 정의한 함수 이름을 사용하여 함수를 views에서 만든다.
def index(request):
    return HttpResponse('*** 여기는 시작페이지 입니다. Hello World Guys. ***')
