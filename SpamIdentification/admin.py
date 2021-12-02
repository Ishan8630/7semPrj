from django.contrib import admin
from django.forms import Textarea

from .models import Category, Data
from django.db import models

# Register your models here.
class DataInline(admin.TabularInline):
    model = Data
    extra = 0


class CategoryAdmin(admin.ModelAdmin):
    model = Category
    inlines = [DataInline]
    

class DataAdmin(admin.ModelAdmin):
    list_display = ['category','message', 'dateAdded']
    search_fields = ['message', 'dateAdded']
    list_filter = ['dateAdded']


admin.site.register(Category,CategoryAdmin)
admin.site.register(Data, DataAdmin)

admin.site.site_header = "Admin Login"
admin.site.site_title = "FinalProject"
admin.site.index_title = "Admin Dashboard"