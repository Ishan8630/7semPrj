
from django.db import models

# Create your models here.


class Category(models.Model):
    name=models.CharField(max_length=50)

    class Meta:
        verbose_name_plural='Categories'

    def __str__(self):
        return self.name



class Data(models.Model):

    category = models.ForeignKey(Category,on_delete=models.CASCADE)
    message = models.CharField(max_length=250)
    dateAdded = models.DateField(auto_now_add = True)

    def __str__(self):
        return self.message
