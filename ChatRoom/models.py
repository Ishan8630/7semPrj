from django.db import models
from django.db.models.deletion import CASCADE

from SpamIdentification.models import Category

# Create your models here.

class Room(models.Model):
    name = models.CharField(max_length=255,default="For All")

class Message(models.Model):
    value = models.CharField(max_length=1000000)
    date = models.DateTimeField(auto_now_add=True)
    user = models.CharField(max_length=255)
    room = models.ForeignKey(Room,on_delete=CASCADE)
    category = models.CharField(max_length=255)