# Generated by Django 3.2.4 on 2023-07-15 10:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0011_auto_20230710_1639'),
    ]

    operations = [
        migrations.AlterField(
            model_name='researchpublicationlist',
            name='research_paper',
            field=models.FileField(blank=True, null=True, upload_to='uploads/research_paper/'),
        ),
    ]
