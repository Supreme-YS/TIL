from django.shortcuts import render

# Create your views here.

def intro(request):
    print('request chart intro - ')
    return render(request, 'chartIndex.html')

def line(request):
    seoul  = [20.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    london = [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
    context = {'seoul' : seoul, 'london' : london}
    return render(request, 'line.html', context)