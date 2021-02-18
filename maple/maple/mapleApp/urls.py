from django.contrib import admin
from django.urls   import path, include
from mapleApp  import  views
from mapleApp  import  views_login
from mapleApp  import  views_sales_status
from mapleApp  import  views_staff
from mapleApp  import  views_menu
from mapleApp  import  views_order_list
from mapleApp  import  views_order


urlpatterns = [
# ----------------------< 심영석 : 로그인, 그래프>----------------------#
    # index  / login
    path('index/', views.index, name='index'),
    # 회원등록
    path('register/', views_login.register, name='register'),
    # 회원등록
    path('registerForm/', views_login.registerForm, name='registerForm'),
    # 로그인
    path('login/', views_login.login, name='login'),
    # 로그아웃
    path('logout/', views_login.logout, name='logout'),
    #20210217 ysc 로그인 체크
    path('loginCheck/', views_login.loginCheck, name='loginCheck'),
#----------------------< 김민재 : 주문 >----------------------------#
    # 주문
    path('order/', views.order, name='order'),
    # 주문 저장
    path('saveOrder/'    , views_order.saveOrder      ,name='saveOrder'),

#----------------------< 박우환 : 주문현황  >-------------------------#
     # 주문현황 view
    path('order_list/', views_order_list.order_list, name='order_list'),
    # 주문 검색
    path('order_search/', views_order_list.order_search, name='order_search'),


#----------------------< 최유숙 >----------------------#
    # 20210210 ysc 주문후 주문번호로 주문내역조회 추가
    path('order_link/<str:orderno>', views_order_list.order_link, name='order_link'),
    # 20210210 ysc 주문후 상태변경
    path('change_status/', views_order_list.change_status, name='change_status'),

    # 매출현황
    path('salesStatus/', views.salesStatus, name='salesStatus'),
    #매출 현황 조회
    path('searchStatus/'   ,views_sales_status.searchStatus , name='searchStatus'),

#----------------------< 정연욱 >----------------------#
    # 카페 메뉴
    path('menu/', views.menu, name='menu'),
    # 메뉴조회
    path('serchmenu/', views_menu.serchmenu, name='serchmenu'),
    # 메뉴등록
    path('insertmenu/', views_menu.insertmenu, name='insertmenu'),
    # 메뉴삭제
    path('deletemenu/', views_menu.deletemenu, name='deletemenu'),
    # 메뉴수정
    path('updatemenu/', views_menu.updatemenu, name='updatemenu'),
#----------------------< 오은영 >----------------------#
    # 직원관리
    path('staff/', views.staff, name='staff'),
    # 직원입력
    path('create_staff/'  ,views_staff.create_staff ,name='create_staff'),
    # 직원수정
    path('update_staff/'  ,views_staff.update_staff ,name='update_staff'),
    # 직원삭제
    path('delete_staff/'  ,views_staff.delete_staff ,name='delete_staff'),

]


