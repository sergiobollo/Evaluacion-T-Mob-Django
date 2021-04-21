from django.db import models

# Create your models here.


class Urls(models.Model):
    url = models.CharField(max_length=100)
    active = models.BooleanField(default=False)
    updated_at = models.DateTimeField(auto_now=True)
    created_at = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return f"id: {self.id}, url: {self.url}, active: {self.active}, created_at: {self.created_at}, updated_at: {self.updated_at}"
