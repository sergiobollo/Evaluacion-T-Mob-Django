from django.contrib import admin
from . import views
from django.urls import path

app_name = "Evaluacion"
urlpatterns = [
    path('', views.index, name='index')]
