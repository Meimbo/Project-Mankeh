from enum import unique
from django.db import models
from django.contrib.auth.models import User, AbstractUser
from django.forms import IntegerField
# Create your models here.

class User(AbstractUser):
    email =models.EmailField(unique= True)
    type = models.BooleanField()
    
class Profile(models.Model):
    age = IntegerField
    address = models.CharField
    location = models.OneToOneField()

class Location(models.Model):
    latitude = models.FloatField()
    longitude = models.FloatField()
    time = models.TimeField()

