from django.db import models
from database_storage import DatabaseStorage
from django.conf import settings
# Create your models here.
class File(models.Model):  
    Nom = models.TextField(null=True, blank=True)
    Size = models.FloatField(null=True, blank=True)
    Binary = models.FileField(upload_to="file", storage=DatabaseStorage(settings.DB_FILES))
    Date = models.DateField(null=True, blank=True)


class FileDB(models.Model):  
    filename  = models.TextField(primary_key=True)
    size = models.IntegerField(null=True, blank=True)
    data = models.TextField(null=True, blank=True)


