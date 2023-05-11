from django.db import models
from django.contrib.auth.models import AbstractUser
from django.contrib.auth.models import User
from django.contrib.auth import get_user_model


class User(AbstractUser):
    is_patient = models.BooleanField(default=False)
    is_doctor = models.BooleanField(default=False)
    phonenumber = models.CharField(max_length=200, null=True)


class Medical(models.Model):
    s1 = models.CharField(max_length=200)
    s2 = models.CharField(max_length=200)
    s3 = models.CharField(max_length=200)
    s4 = models.CharField(max_length=200)
    s5 = models.CharField(max_length=200)
    disease = models.CharField(max_length=200)
    medicine = models.CharField(max_length=200)
    patient = models.ForeignKey(
        User, related_name="patient", on_delete=models.CASCADE)
    doctor = models.ForeignKey(
        User, related_name="doctor", on_delete=models.CASCADE, null=True)
    created_on = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.disease


class Ment(models.Model):
    approved = models.BooleanField(default=False)
    time = models.CharField(max_length=200, null=True)
    patient = models.ForeignKey(
        User, related_name="pat", on_delete=models.CASCADE)
    doctor = models.ForeignKey(
        User, related_name="dor", on_delete=models.CASCADE, null=True)
    ment_day = models.DateTimeField(null=True)
    medical = models.ForeignKey(
        Medical, related_name="medical", on_delete=models.CASCADE, null=True)
    created_on = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.approved


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    avatar = models.ImageField(
        upload_to='', default='profile/avator.png', blank=True)
    birth_date = models.DateField(default='None')
    region = models.CharField(max_length=255, default='')
    gender = models.CharField(max_length=255)
    country = models.CharField(max_length=255, default='Tanzania')

    def __str__(self):
        return self.country
