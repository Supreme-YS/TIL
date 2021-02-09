from django.contrib import admin
from django.urls import path, include
from mapleApp import views
from mapleApp  import  views_sales_status


urlpatterns = [
    # ----------------------< 공통 :기본 메뉴이동 >----------------------
    # index  / login
    path('index/', views.index, name='index'),
    # 주문
    path('order/', views.order, name='order'),
    # 주문현황
    path('orderStatus/', views.orderStatus, name='orderStatus'),
    # 주문
    path('menu/', views.menu, name='menu'),
    # 직원관리
    path('staff/', views.staff, name='staff'),
    # 매출현황
    path('salesStatus/', views.salesStatus, name='salesStatus'),

    # ----------------------< 김민재 >----------------------#
    path('serchmenu/'    , views.serchmenu      ,name='serchmenu'),
    path('insertmenu/'    , views.insertmenu      ,name='insertmenu'),
    path('deletemenu/'    , views.deletemenu      ,name='deletemenu'),
    path('updatemenu/'    , views.updatemenu      ,name='updatemenu'),
    path('saveOrder/'    , views.saveOrder      ,name='saveOrder'),
    # ----------------------< 심영석 >----------------------#
    path('register/', views.register, name = 'register'),
    path('registerForm/', views.registerForm, name = 'registerForm'),
    path('login/', views.login, name = 'login'),
    path('logout/', views.logout, name='logout'),
    # ----------------------< 박우환 >----------------------#
    # ----------------------< 오은영 >----------------------#
    path('create_staff/', views.create_staff, name='create_staff'),
    path('update_staff/', views.update_staff, name='update_staff'),
    path('delete_staff/', views.delete_staff, name='delete_staff'),
    # ----------------------< 정연욱 >----------------------#
    # ----------------------< 최유숙 >----------------------#
    path('serchStatus/', views_sales_status.serchStatus, name='serchStatus'),
    # 그래프 line
    path('line/', views_sales_status.line, name='line'),
#----------------------< sample >----------------------#
    # sample
    path('sampleUi/'    , views.sampleUi      ,name='sampleUi'),
    path('sampleCrud/'  , views.sampleCrud    ,name='sampleCrud'),

    #상품조회
    path('serchProduct/', views.serchProduct  ,name='serchProduct'),

    #상품등록
    path('insertProduct/', views.insertProduct, name='insertProduct'),

    # 상품수정
    path('updateProduct/', views.updateProduct, name='updateProduct'),

    # 상품삭제
    path('deleteProduct/', views.deleteProduct, name='deleteProduct'),

]
