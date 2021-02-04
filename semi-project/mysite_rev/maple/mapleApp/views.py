from django.http import JsonResponse
from django.shortcuts import render , redirect

from .models import *

from django.core.paginator import *



#----------------------< 공통 : 메뉴이동>--------------------#

# landing / login
def index(request):
    return render(request,'index.html')

# order
def order(request):
    return render(request,'order.html')

# orderStatus
def orderStatus(request):
    return render(request,'orderStatus.html')

# menu
def menu(request):
    return render(request,'menu.html')

# staff
def staff(request):
    return render(request,'staff.html')

# salesStatus
def salesStatus(request):
    return render(request,'salesStatus.html')



#----------------------< 김민재 >----------------------#


#----------------------< 심영석 >----------------------#


#----------------------< 박우환 >----------------------#


#----------------------< 오은영 >----------------------#


#----------------------< 정연욱 >----------------------#

#----------------------< 최유숙 >----------------------#






#----------------------< sample >----------------------#
# 샘플화면 
def sampleUi(request):
    print('*> sampleUi :')
    
    return render(request,'sample_ui.html')
# 샘플CRUD - 상품관리 
def sampleCrud(request):
    print('*> sampleCrud :')
    
    return redirect('serchProduct')

# 샘플CRUD - 상품조회
def serchProduct(request):
    print('*> serchProduct :')
    producs = SampleProduct.objects.all()
    # title  writer  content  regdata  viewcnt
    #print('*>producs -', type(producs), producs)
    context = {'producs': producs,}
    
    return render(request, 'sample_crud.html', context)

# 샘플CRUD - 입력
def insertProduct(request):
    print('*> insertProduct :')
    
    # Client 값 확인
    pdName=request.POST.get('pdName', '0')
    pdPrice=request.POST.get('pdPrice', 0)

    # 데이터 저장
    pro=SampleProduct(pd_name = pdName,pd_price = pdPrice)
    pro.save()

    return redirect('serchProduct')

# 샘플CRUD - 수정
def updateProduct(request):
    print('*> updateProduct :')
    # Client 값 확인

    #id = request.POST['id']

    id = request.POST.get('id', 0)
    pdName=request.POST.get('pdName', '0')
    pdPrice=request.POST.get('pdPrice', 0 )

    print('request modify - ', id, pdName, pdPrice)

    # 데이터 수정
    pro = SampleProduct.objects.get(id=id)
    pro.pd_name = pdName
    pro.pd_price = pdPrice
    pro.save()

    #화면이동
    return redirect('serchProduct')



# 샘플CRUD - 삭제
def deleteProduct(request):
    print('*> deleteProduct :')
    # Client 값 확인
    id = request.POST.get('id',0)
    print('request bbs_remove param - ' , id)
    # 데이터 수정
    SampleProduct.objects.get(id=id).delete()
    #화면이동
    return redirect('serchProduct')






