# Generated by Django 3.2.4 on 2022-02-07 04:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('project_management', '0008_remove_role_project'),
    ]

    operations = [
        migrations.AddField(
            model_name='role',
            name='project',
            field=models.ForeignKey(default=9, on_delete=django.db.models.deletion.CASCADE, to='project_management.status'),
            preserve_default=False,
        ),
    ]
