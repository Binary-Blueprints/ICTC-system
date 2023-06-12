# Generated by Django 3.2.4 on 2022-02-06 16:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('project_management', '0005_status_state_of_project'),
    ]

    operations = [
        migrations.CreateModel(
            name='Person',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=30, null=True)),
                ('designation', models.CharField(blank=True, max_length=30, null=True)),
                ('about', models.TextField(blank=True, max_length=500, null=True)),
                ('profile_pic', models.ImageField(blank=True, default='uploads/profile_pictures/default.png', upload_to='uploads/profile_pictures')),
            ],
        ),
        migrations.AddField(
            model_name='status',
            name='x',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='project_management.person'),
        ),
    ]
