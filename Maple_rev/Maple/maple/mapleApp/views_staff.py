from django.http import JsonResponse
from django.shortcuts import render , redirect
from .models import *


# ----------------------< 오은영 >----------------------#
def create_staff(request):
    staffid     = request.POST['staffid']
    staffname   = request.POST['staffname']
    jobtitle    = request.POST['jobtitle']
    startdate   = request.POST['startdate']
    phone       = request.POST['phone']
    staffs      = Staff(staffid=staffid, staffname=staffname, jobtitle=jobtitle,
                        startdate=startdate, phone=phone)
    staffs.save()
    return redirect('staff')

def update_staff(request):
    id = request.POST['id']
    staffid     = request.POST['staffid']
    staffname   = request.POST['staffname']
    jobtitle    = request.POST['jobtitle']
    startdate   = request.POST['startdate']
    phone       = request.POST['phone']
    staffs      = Staff.objects.get(id=id)
    staffs.staffid  = staffid
    staffs.staffname    = staffname
    staffs.jobtitle     = jobtitle
    staffs.startdate    = startdate
    staffs.phone        = phone
    staffs.save()
    return redirect('staff')

def delete_staff(request):
    id = request.POST['id']
    staffs = Staff.objects.get(id=id)
    staffs.delete()
    return redirect('staff')