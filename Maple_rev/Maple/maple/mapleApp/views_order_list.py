from django.http import JsonResponse
from django.shortcuts import render, redirect

from .models import *
from django.db.models import Sum, F


# ################ GroupConcat ####################################################
# ##################################################################################
from django.core.paginator import Paginator
from django.db.models import Aggregate, CharField


class GroupConcat(Aggregate):
    function = 'GROUP_CONCAT'
    template = "%(function)s(%(expressions)s, ', ')"

    def __init__(self, expression, **extra):
        super(GroupConcat, self).__init__(
            expression,
            output_field=CharField(),
            **extra
        )


details = {
    'time': F('orderno__ordertime'),
    'payment': F('orderno__payment'),
    'total_qty': Sum('qty'),
    'total_price': Sum('price'),
    'status': F('orderno__status'),
    'menuname': GroupConcat('menuid__menuname')
}


def order_list(request):
    order_list = OrderDetail.objects.values('orderno').annotate(**details).order_by('orderno')

    paginator = Paginator(order_list, 7)  # Show 7 contacts per page
    page = request.GET.get('page')
    orders = paginator.get_page(page)
    context = {'orders': orders}

    return render(request, 'order_list.html', context)


# ########################## Keyword Search #########################

status_dict = {
    '완료': 'done',
    '준비중': 'prep',
    '주문': 'ord'
}
from django.db.models import Q


def order_search(request):
    order_list, s_keyword, s_option = None, None, None
    s_type = request.GET.get('s_type').strip()

    if s_type == 'id' or s_type == 'content':
        s_keyword = request.GET.get('s_keyword').strip()
        print('type: ', s_type, ', keyword: ', s_keyword)

        if s_type == 'id' and s_keyword:
            order_list = OrderDetail.objects.filter(Q(orderno=s_keyword)).values('orderno').annotate(**details)

        if s_type == 'content' and s_keyword:
            nos = OrderDetail.objects.filter(Q(menuid__menuname__icontains=s_keyword)).values('orderno').order_by(
                'orderno').distinct()
            order_list = OrderDetail.objects.filter(Q(orderno__in=nos)).values('orderno').annotate(**details).order_by(
                'orderno')

    if s_type == 'status':
        s_option = request.GET.get('s_option')
        if s_option:
            # keyword = status_dict[s_keyword]
            nos = OrderDetail.objects.filter(Q(orderno__status=s_option)).values('orderno').order_by(
                'orderno').distinct()
            order_list = OrderDetail.objects.filter(Q(orderno__in=nos)).values('orderno').annotate(**details).order_by(
                'orderno')

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