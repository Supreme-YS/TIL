from django.http import JsonResponse
from django.shortcuts import render, redirect

from .models import *
from django.db.models import Sum, F

# --------------------- Cafe Maple ------------------------------
# ---------------------------------------------------------------


# ################ GroupConcat ####################################################
#  메뉴이름을 연결하는 함수
# ##################################################################################
from django.core.paginator import Paginator
from django.db.models import Aggregate, CharField


#-----------------------------------
#  메뉴이름을 연결하는 함수
#-----------------------------------
class GroupConcat(Aggregate):
    function = 'GROUP_CONCAT'
    template = "%(function)s(%(expressions)s, ', ')"

    def __init__(self, expression, **extra):
        super(GroupConcat, self).__init__(
            expression,
            output_field=CharField(),
            **extra
        )


#  annotate에서 들어가 Parameter, field name aliasing.  SELECT의 AS XXX 라고 생각하면 됨.
#  집계함수를 사용하기 위해 사용
details = {
    'date': F('orderno__orderdate'),
    'time': F('orderno__ordertime'),
    'payment': F('orderno__payment'),
    'total_qty': Sum('qty'),
    'total_price': Sum('sales'),
    # 'total_price': Sum('price'),
    'status': F('orderno__status'),
    'menuname': GroupConcat('menuid__menuname')
}

#-----------------------------------
# 주문현황 리스트하는 함수
#-----------------------------------
def order_list(request):
    # OrdreDetail Model에서 주문번호로 groping 및 ordering
    order_list = OrderDetail.objects.values('orderno').annotate(**details).order_by('-date', '-time')

    # django 에서 지원하는 Paginator를 이용
    paginator = Paginator(order_list, 7)  # Show 7 contacts per page
    page = request.GET.get('page')
    orders = paginator.get_page(page)
    context = {'orders': orders}

    return render(request, 'order_list.html', context)


# ########################## Order keyword Search #########################
# Search Type:  주문번호(id), 주문내용(content), 상황(status)
# ###################################################################
from django.db.models import Q

#-----------------------------------
# 주문 조회
#-----------------------------------
def order_search(request):
    order_list, s_keyword, s_option = None, None, None
    s_type = request.GET.get('s_type').strip()

    # type이 주문번호(id) 이거나 주문내용(content)일 경우 keyword 검색
    if s_type == 'id' or s_type == 'content':
        s_keyword = request.GET.get('s_keyword').strip()
        # print('type: ', s_type, ', keyword: ', s_keyword)

        if s_type == 'id' and s_keyword:
            order_list = OrderDetail.objects.filter(Q(orderno=s_keyword)).values('orderno').annotate(**details)

        if s_type == 'content' and s_keyword:
            nos = OrderDetail.objects.filter(Q(menuid__menuname__icontains=s_keyword)).values('orderno').order_by(
                'orderno').distinct()
            order_list = OrderDetail.objects.filter(Q(orderno__in=nos)).values('orderno').annotate(**details).order_by(
                '-date', '-time')

    # type 이 status일 경우, select에 선택한 value (s_option)로 검색
    if s_type == 'status':
        s_option = request.GET.get('s_option')
        if s_option:
            nos = OrderDetail.objects.filter(Q(orderno__status=s_option)).values('orderno').order_by(
                'orderno').distinct()
            order_list = OrderDetail.objects.filter(Q(orderno__in=nos)).values('orderno').annotate(**details).order_by(
                '-date', '-time')

    # 찾지 못할 경우, 초기 화면으로 redirect
    if order_list == None:
        return redirect('order_list')

    paginator = Paginator(order_list, 7)  # Show 7 contacts per page

    page = request.GET.get('page')
    results = paginator.get_page(page)

    context = {
        'orders': results,
        's_type': s_type,
        's_keyword': s_keyword,
        's_option': s_option
    }

    return render(request, "order_list.html", context)

#-------------------
#  주문후  주문번호 보여주기
#-------------------
#20210215 ysc 주문후 주문번호로 주문내역조회 추가
def order_link(request,orderno):
    print('#>order_link ')
    order_list = OrderDetail.objects.filter(orderno=orderno).values('orderno').annotate(**details).order_by('-orderno')
    # status_info = Info.objects.filter(type='status_choice').order_by('name')
    paginator = Paginator(order_list, 7)  # Show 7 contacts per page
    page = request.GET.get('page')
    orders = paginator.get_page(page)
    context = {'orders': orders,}
    return render(request, 'order_list.html', context)

#-----------------------------------
# 주문 상태변경
#-----------------------------------
#20210215 ysc 주문번호로 주문내역조회 추가
def change_status(request):
    orderno = request.POST.get('orderno', '')
    # print('#>change_status ,orderno:',orderno)
    od = Order.objects.get(orderno=orderno)
    od.status = 'done'
    od.save()
    return redirect('../order_link/' + orderno)