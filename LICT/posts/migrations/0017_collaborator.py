# Generated by Django 3.2.4 on 2023-07-16 16:39

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('project_management', '0019_alter_collaborator_collborating_project'),
        ('posts', '0016_auto_20230715_1241'),
    ]

    operations = [
        migrations.CreateModel(
            name='Collaborator',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('collaborating_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='post_collaborator', to=settings.AUTH_USER_MODEL)),
                ('collborating_post', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='post_collaborator', to='posts.post')),
                ('role', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='post_collaborator', to='project_management.role')),
            ],
        ),
    ]
