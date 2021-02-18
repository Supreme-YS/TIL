from django.db import models
from django.utils import timezone
from datetime import datetime
# Create your models here.
#----------------------< 옵션값 >----------------------#
pay_choice = {
    ('card', '카드'),
    ('cash', '현금')
}

status_choice = {
    ('done','완료'),
    ('prep','준비중'),
    ('ord','주문'),
}

job_title = {
    ('J10', 'CEO'),
    ('J20', '메니저'),
    ('J30', '사원'),
    ('J40', '인턴'),
    ('J50', '아르바이트'),
}
#----------------------< 공통정보 >----------------------#
class Info(models.Model):
    type = models.CharField(max_length=20 ,verbose_name='타입')
    code = models.CharField(max_length=100,verbose_name='코드')
    name = models.CharField(max_length=100,verbose_name='코드명')

    class Meta:
        db_table = 'm_info'  #테이블명
        unique_together =(('type','code')) # unique key
    def __str__(self):
        return self.type+ ' , '+self.code+ ' , ' + self.name


#----------------------< 메뉴 >----------------------#
class Menu(models.Model):
    menuid = models.CharField(max_length=20, primary_key=True,verbose_name='메뉴아이디')
    menuname = models.CharField(max_length=100,verbose_name='메뉴명')
    price = models.IntegerField(verbose_name='가격')

    class Meta:
        db_table = 'm_menu' #테이블명
    def __str__(self):
        return self.menuid+ ' , '+self.menuname+ ' , ' + str(self.price)

#----------------------< 직원 >----------------------#
class Staff(models.Model):
    staffid = models.CharField(max_length=20,verbose_name='직원id')
    staffname = models.CharField(max_length=20,verbose_name='직원명')
    jobtitle = models.CharField(max_length=20,choices=job_title ,verbose_name='직급' )
    startdate = models.DateField(verbose_name='입사일')
    phone = models.CharField(max_length=20,verbose_name='전화번호')

    class Meta:
        db_table = 'm_staff' #테이블명
    def __str__(self):
        return self.staffid + ' , ' + self.staffname + ' , ' + self.jobtitle + ' , ' + self.startdate.strftime('%Y-%m-%d') + ' , ' + self.phone

#----------------------< 주문 >----------------------#
class Order(models.Model):
    orderno = models.CharField(max_length=20, primary_key=True,verbose_name='주문번호')
    orderdate = models.CharField(max_length=10,default='',verbose_name='주문일자(YYYY-MM-DD)')
    ordertime = models.CharField(max_length=10,default='',verbose_name='주문시간(HH:MM:SS)')
    payment = models.CharField(max_length=20, choices=pay_choice,verbose_name='결제구분')
    status = models.CharField(max_length=20, choices=status_choice,verbose_name='완료여부')

    class Meta:
        db_table = 'm_order' #테이블명
    def __str__(self):
        return self.orderno + ' , ' + self.orderdate + ' , ' +self.ordertime + ' , '+self.payment + ' , ' + self.status


#----------------------< 주문상세 >----------------------#
class OrderDetail(models.Model):
    orderno = models.ForeignKey(Order, on_delete=models.CASCADE, related_name='related_orderno' ,verbose_name='주문번호')
    menuid = models.ForeignKey(Menu, on_delete=models.CASCADE ,  related_name='related_menu',verbose_name='메뉴' )
    price = models.IntegerField(default=0 ,verbose_name='가격')
    qty = models.IntegerField(default=0 ,verbose_name='수량')
    sales = models.IntegerField(default=0,verbose_name='판매량' )

    class Meta:
        db_table = 'm_orderdetail' #테이블명
        unique_together =(('orderno','menuid')) # unique key
    def __str__(self):
        return str(self.orderno) + ' , ' + str(self.menuid) + ' , ' + str(self.price)+ ' , ' + str(self.qty)

#----------------------< User >----------------------#
class User(models.Model) :
    user_id = models.CharField(max_length=50 , verbose_name='사용자', primary_key=True)
    user_pwd = models.CharField(max_length=50 , verbose_name='비밀번호')
    user_mail = models.CharField(max_length=100 , verbose_name='이메일주소')


    class Meta:
        db_table = 'm_user' #테이블명
    def __str__(self):
        return self.user_id+" , "+self.user_pwd+" , "+self.user_mail

