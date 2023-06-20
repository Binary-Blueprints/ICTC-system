# Generated by Django 3.2.1 on 2021-05-11 02:41

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('posts', '0002_alter_post_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='Answer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('answer', models.TextField()),
                ('image', models.ImageField(blank=True, null=True, upload_to='images/')),
                ('publish_date', models.DateTimeField(default=django.utils.timezone.now)),
                ('downvotes', models.ManyToManyField(blank=True, related_name='ans_downvotes', to=settings.AUTH_USER_MODEL)),
                ('post', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='posts.post')),
                ('publisher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('upvotes', models.ManyToManyField(blank=True, related_name='ans_upvotes', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]