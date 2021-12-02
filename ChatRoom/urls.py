from django.urls import path
from .import views

app_name = 'chatroom'

urlpatterns = [
    path('', views.home,name='home'),
    path('<str:roomname>/', views.room, name='room'),
    path('<str:roomname>/getmessages/', views.getMessages, name='getmessages')
]