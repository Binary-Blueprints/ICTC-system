# Generated by Django 3.2.4 on 2022-02-06 22:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('project_management', '0007_auto_20220207_0139'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='role',
            name='project',
        ),
    ]
