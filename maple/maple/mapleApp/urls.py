from django.contrib import admin
from django.urls   import path, include
from mapleApp  import  views

urlpatterns = [
#----------------------< 공통 :기본 메뉴이동 >----------------------
    # index  / login
    path('index/'        , views.index          , name='index'),
    # 주문
    path('order/'        , views.order          , name='order'),
    # 주문현황
    path('orderStatus/'  , views.orderStatus    , name='orderStatus'),
    # 주문
    path('menu/'         , views.menu           , name='menu'),
    # 직원관리
    path('staff/'        , views.staff          , name='staff'),
    # 매출현황
    path('salesStatus/'  , views.salesStatus    , name='salesStatus'),


#----------------------< 심영석 >----------------------
    path('register/', views.register, name = 'register'),
    path('registerForm/', views.registerForm, name = 'registerForm'),
    path('login/', views.login, name = 'login'),
    path('logout/', views.logout, name='logout'),


#----------------------< 김민재 >----------------------
    path('saveOrder/'    , views.saveOrder      ,name='saveOrder'),
    path('serchmenu/'    , views.serchmenu      ,name='serchmenu'),
    path('insertmenu/'    , views.insertmenu      ,name='insertmenu'),
    path('deletemenu/'    , views.deletemenu      ,name='deletemenu'),
    path('updatemenu/'    , views.updatemenu      ,name='updatemenu'),
]
