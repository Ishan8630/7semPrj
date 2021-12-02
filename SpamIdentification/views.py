from django.contrib import messages
from django.http import request
from django.http.response import HttpResponse
from django.shortcuts import get_object_or_404, redirect, render
from . models import Data
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from .forms import DataForm
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
import os
import joblib

model = joblib.load(os.path.dirname(__file__) + "\\finmoddel.pkl")

# Create your views here.

data = {}

def home(request):
	#logic for view
	return render(request,'SpamIdentification/home.html')


def example(request):
	spam_list = Data.objects.filter(category=2).order_by('?')[:10]
	data['spam_list']=spam_list
	return render(request,'SpamIdentification/example.html',data)	


def checkSpam(request):
	if request.method=="POST":
		input = request.POST["checkField"]
		finResult = model.predict([input])[0]
		data['result']=finResult
		return render(request,'SpamIdentification/result.html',data)
	else:
		return render(request,'SpamIdentification/checkSpam.html',data)	


@login_required(login_url='SpamIdentification:login')
def listData(request):
	list = Data.objects.all().order_by('-id')
	number = Data.objects.count()
	p = Paginator(list, 10)
	page_number = request.GET.get('page')
	try:
		page_obj = p.get_page(page_number)  # returns the desired page object
	except PageNotAnInteger:
        # if page_number is not an integer then assign the first page
		page_obj = p.page(1)
	except EmptyPage:
        # if page is empty then return last page
		page_obj = p.page(p.num_pages)
	data['list']=page_obj
	data['number']=number
	return render(request,'SpamIdentification/listData.html',data)


@login_required(login_url='SpamIdentification:login')
def addData(request):
	if request.method == "POST":
		form = DataForm(request.POST or None)  
		if form.is_valid():  
			obj_data = form.save(commit=False)  
			obj_data.save()
			messages.success(request,f'Data has been added successfully!!!')
			return redirect('SpamIdentification:list')
		else:
			messages.error(request,f'Error in adding data')
			data['form'] = form
			return redirect('SpamIdentification:list')	
	else:
		form = DataForm()
		data['form'] = form
		return render(request, 'SpamIdentification/addData.html', data)


@login_required(login_url='SpamIdentification:login')
def updateData(request, id):
	obj = get_object_or_404(Data, id = id)
	form = DataForm(request.POST or None, instance = obj)
	if form.is_valid():
		form.save()
		messages.success(request,f'Data has been edited successfully!!!')
		return redirect('SpamIdentification:list')
	
	data["form"] = form
	return render(request, "SpamIdentification/addData.html", data)


@login_required(login_url='SpamIdentification:login')
def deleteData(request, id):
	obj = get_object_or_404(Data, id = id)
	if request.method =="POST":
		obj.delete()
		messages.success(request,f'Data has been deleted successfully!!!')
		return redirect('SpamIdentification:list')
 	
	return render(request, "SpamIdentification/deleteData.html", data)


def handleLogin(request):
	if request.method == "POST":
		username = request.POST['username']
		password = request.POST['password']
		user = authenticate(username=username,password=password)
		if user is not None:
			login(request,user)
			messages.success(request,f'Logged in successfully!!!')
			return redirect('SpamIdentification:list')
		else:
			messages.error(request,f'Invalid Credentials!!!')
			return redirect('SpamIdentification:login')

	else:	
		return render(request, "SpamIdentification/login.html", data)


def handleLogout(request):
	logout(request)
	messages.success(request,f'Logged out successfully!!!')
	return redirect('SpamIdentification:login')	


def PreventionPage(request):
	return render(request,'SpamIdentification/prevention.html')

