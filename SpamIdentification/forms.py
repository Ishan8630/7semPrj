from django import forms
from django.db import models
from .models import Data

class DataForm(forms.ModelForm):
    class Meta:
        model = Data
        fields = ['category','message']
