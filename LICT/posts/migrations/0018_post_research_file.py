# Generated by Django 3.2.4 on 2023-07-16 17:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0017_collaborator'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='research_file',
            field=models.FileField(blank=True, null=True, upload_to=''),
        ),
    ]
