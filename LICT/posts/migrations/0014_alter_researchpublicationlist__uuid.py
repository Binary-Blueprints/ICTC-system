# Generated by Django 3.2.4 on 2023-07-15 10:58

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0013_researchpublicationlist__uuid'),
    ]

    operations = [
        migrations.AlterField(
            model_name='researchpublicationlist',
            name='_uuid',
            field=models.UUIDField(default=uuid.uuid4, unique=True),
        ),
    ]
