from django.db.models.signals import post_save
from django.dispatch import receiver
from django.core.cache import cache
from .models import Urls


@receiver(post_save, sender=Urls)
def actualizar_lista(sender, instance, **kwargs):
    print("Se cargo una nueva URL: " + instance.url)
    if (instance.active == True):
        print("La URL " + instance.url + " esta activa!!!")
        cache.set(instance.id, instance.url)

post_save.connect(receiver = actualizar_lista, sender='Evaluacion.Urls')