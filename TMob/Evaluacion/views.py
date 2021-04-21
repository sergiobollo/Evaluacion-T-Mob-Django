from django.shortcuts import render
from .models import Urls
from django.core.cache import cache

# Create your views here.


def index(request):
    print(request.GET.get('key'))
    key = request.GET.get('key')
    urls =  cache.get(key)
    print(urls)   
    context = {'Key': key, 'Urls': urls}
    return render(request, 'Evaluacion/index.html', context)



"""
def medicos(request):
    turnos = Turnos.objects.filter(profesional=request.user.username)
    turnos = turnos.order_by('fecha')
    
    fecha = request.GET.get('fecha')
    if fecha != '' and fecha is not None:
        turnos = turnos.filter(fecha__contains=fecha)
    
    context = {'turnos': turnos}

    return render(request, 'users/medicos.html', context)
    """