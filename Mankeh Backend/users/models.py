from django.db import models

# Create your models here.
class Users(models.Model):
    name = models.TextField
    id = models.IntegerField
