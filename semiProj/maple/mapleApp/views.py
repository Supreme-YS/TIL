from django.shortcuts import render, redirect
from .models import UserInfo                 # 빌드한 모델
from django.views.generic import View        # 클래스 뷰의 상위 클래스(상속)
from django.http import HttpResponse         # 직접 응답 방식
from django.http import HttpResponseRedirect # 이미 만들어진 페이지 이동
from django.contrib.auth.models import User
from django.contrib import auth

# Create your views here.

class Login(View):
    def get(self, request):
        return render(request, 'login.html')

    def post(self, request):

        id  = request.POST.get('userid')
        pw  = request.POST.get('userpw')
        msg = False

        infos = UserInfo.objects.all()  # Info 가 model, 별도의 DB에 저장된 내용 호출
        for info in infos :
            if info.userid==id and info.userpw==pw:
                name=info.username
                msg=True
        msg = name + '님, 로그인에 성공했습니다.'

        context={
            'msg' : msg,
        }

        return render(request, 'nextpage.html', context)

def signup(request):
    # signup 으로 POST 요청이 왔을 때, 새로운 유저를 만드는 절차를 밟는다.
    if request.method == 'POST':
        # password와 confirm에 입력된 값이 같다면
        if request.POST['password'] == request.POST['confirm']:
            # user 객체를 새로 생성
            user = User.objects.create_user(username=request.POST['username'], password=request.POST['password'])
            # 로그인 한다
            auth.login(request, user)
            return redirect('/')
    # signup으로 GET 요청이 왔을 때, 회원가입 화면을 띄워준다.
    return render(request, 'signup.html')