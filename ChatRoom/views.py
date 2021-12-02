from django.http.response import HttpResponse, JsonResponse
from django.shortcuts import redirect, render
from .models import Message, Room
from SpamIdentification.models import Category
import os
import joblib

# Create your views here.
model = joblib.load(os.path.dirname(__file__) + "\\finmoddel.pkl")

data ={}

def home(request):
    if request.method == "POST":
        roomname = request.POST['roomname']
        username = request.POST['username']
        if Room.objects.filter(name=roomname).exists():
            return redirect('/chatroom/'+roomname+'/?username='+username)
        else:
            new_room = Room.objects.create(name=roomname)
            new_room.save()    
            return redirect('/chatroom/'+roomname+'/?username='+username)
    else:    
        return render(request,'chatroom/home.html')


def room(request,roomname):
    if request.method == "POST":
        message = request.POST['message']
        username = request.POST['username']
        room_id = request.POST['room_id']
        room = Room.objects.get(id = room_id)
        category_id = model.predict([message])[0]
        if category_id == 1:
            new_message = Message.objects.create(value=message,user=username,room=room,category="ham")
        else:
            new_message = Message.objects.create(value=message,user=username,room=room,category="spam")
        new_message.save()
        return  HttpResponse("Success!!")
    else:    
        username = request.GET.get('username')
        room_detail =None
        try:
            room_detail = Room.objects.get(name=roomname)
        except:
            pass    
        data['username']=username
        data['room'] = roomname
        data['room_detail']=room_detail
        return render(request,'chatroom/room.html',data)


def getMessages(request,roomname):
    room = Room.objects.get(name=roomname)
    messages = Message.objects.filter(room = room).order_by('-id')
    return JsonResponse({"messages":list(messages.values())})
    
