from django.apps import AppConfig
from django.db.models.signals import post_save
from django.dispatch import receiver


class EvaluacionConfig(AppConfig):
    name = 'Evaluacion'
    
    def ready(self):
        import Evaluacion.signals
        from .models import Urls

post_save.connect(receiver, sender='Evaluacion.Urls')