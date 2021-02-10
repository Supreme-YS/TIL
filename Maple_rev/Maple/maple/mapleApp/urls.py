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
#----------------------< 공통 :기본 메뉴이동 >----------------------
    # index  / login
    path('index/'        ,views.index             ,name='index'),
    # 주문
    path('order/'        ,views_order.order             ,name='order'),
    # 주문현황
    path('orderStatus/'  ,views.orderStatus       ,name='orderStatus'),
    # 주문
    path('menu/'         ,views.menu              ,name='menu'),
    # 직원관리
    path('staff/'        ,views.staff             ,name='staff'),
    # 매출현황
    path('salesStatus/'  ,views.salesStatus       ,name='salesStatus'),

#----------------------< 김민재 : 주문 >----------------------------#
    path('saveOrder/'    , views_order.saveOrder      ,name='saveOrder'),
#----------------------< 심영석 : 로그인, 그래프>----------------------#
    path('register/', views_login.register, name = 'register'),
    path('registerForm/', views_login.registerForm, name = 'registerForm'),
    path('login/', views_login.login, name = 'login'),
    path('logout/', views_login.logout, name='logout'),
    path('graph/', views_login.graph, name='graph'),
#----------------------< 박우환 : 주문현황  >-------------------------#
     # 주문현황 view
    path('order_list/', views_order_list.order_list, name='order_list'),
    # 주문 검색
    path('order_search/', views_order_list.order_search, name='order_search'),
#----------------------< 오은영 >----------------------#
    path('create_staff/'  ,views_staff.create_staff ,name='create_staff'),
    path('update_staff/'  ,views_staff.update_staff ,name='update_staff'),
    path('delete_staff/'  ,views_staff.delete_staff ,name='delete_staff'),
#----------------------< 정연욱 >----------------------#
    path('serchmenu/', views_menu.serchmenu, name='serchmenu'),
    path('insertmenu/', views_menu.insertmenu, name='insertmenu'),
    path('deletemenu/', views_menu.deletemenu, name='deletemenu'),
    path('updatemenu/', views_menu.updatemenu, name='updatemenu'),
#----------------------< 최유숙 >----------------------#
    #매출 현황 조회
    path('serchStatus/'   ,views_sales_status.serchStatus , name='serchStatus'),
#----------------------< sample >----------------------#
    # sample
    path('sampleCrud/'    ,views.sampleCrud                ,name='sampleCrud'),
    path('serchProduct/'  ,views.serchProduct              ,name='serchProduct'),
    path('insertProduct/' ,views.insertProduct             ,name='insertProduct'),
    path('updateProduct/' ,views.updateProduct             ,name='updateProduct'),
    path('deleteProduct/' ,views.deleteProduct             ,name='deleteProduct'),

]