from django.contrib import admin
from .models import User, Profile, Medical, Ment

models_list = [User, Profile, Medical, Ment]
admin.site.register(models_list)
