# Generated by Django 3.2.4 on 2023-07-16 17:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0018_post_research_file'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='research_file',
            field=models.FileField(blank=True, null=True, upload_to='uploads/research_post/'),
        ),
    ]