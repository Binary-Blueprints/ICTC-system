# Generated by Django 3.2.4 on 2023-07-10 16:51

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('project_management', '0015_alter_status_estimated_completion_date'),
    ]

    operations = [
        migrations.CreateModel(
            name='Collaborator',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('collaborating_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('collborating_project', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project_management.status')),
                ('role', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='project_management.role')),
            ],
        ),
    ]
