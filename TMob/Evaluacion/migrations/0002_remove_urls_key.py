# Generated by Django 2.1 on 2021-04-21 00:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Evaluacion', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='urls',
            name='key',
        ),
    ]
