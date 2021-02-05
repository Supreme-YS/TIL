from django.db import models
from django.utils import timezone
# Create your models here.

#----------------------< 공통 >----------------------
class SampleProduct(models.Model):
    pd_name = models.CharField(max_length=100)
    pd_price = models.IntegerField(default=0)

#----------------------< 심영석 >----------------------
# 기존 유저들을 위한 로그인용 모델
class User(models.Model) :
    username = models.CharField(max_length=50 , verbose_name='사용자명')
    password = models.CharField(max_length=50 , verbose_name='비밀번호')
    usermail = models.CharField(max_length=100 , verbose_name='이메일주소')
    # registered_dttm = models.DateTimeField(auto_now_add=True, verbose_name=' 등록시간')

    def __str__(self):
        return self.username # User object 대신 나타낼 문자

    class Meta : # 메타 클래스를 이용하여 테이블 명 지정
        db_table = 'test_user'

# 신규 유저들을 위한 회원가입용 모델
