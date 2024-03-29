# Generated by Django 3.2.4 on 2022-02-06 19:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('project_management', '0006_auto_20220206_2212'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='person',
            name='designation',
        ),
        migrations.RemoveField(
            model_name='status',
            name='x',
        ),
        migrations.CreateModel(
            name='Role',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('role_name', models.CharField(max_length=30)),
                ('project', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='project_management.status')),
            ],
        ),
        migrations.AddField(
            model_name='person',
            name='role',
            field=models.ManyToManyField(to='project_management.Role'),
        ),
    ]
