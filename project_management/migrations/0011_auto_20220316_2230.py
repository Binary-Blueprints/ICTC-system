# Generated by Django 3.2.4 on 2022-03-16 16:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('project_management', '0010_auto_20220316_2230'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='person',
            name='role',
        ),
        migrations.AddField(
            model_name='person',
            name='role',
            field=models.ManyToManyField(to='project_management.Role'),
        ),
    ]