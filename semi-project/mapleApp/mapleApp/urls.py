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






#----------------------< 김민재 >----------------------#

#----------------------< 심영석 >----------------------#

#----------------------< 박우환 >----------------------#

#----------------------< 오은영 >----------------------#

#----------------------< 정연욱 >----------------------#

#----------------------< 최유숙 >----------------------#



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
