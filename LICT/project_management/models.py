import markdown

from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User


md = markdown.Markdown()


class Status(models.Model):
    title = models.CharField(max_length=2000)
    state_of_project = models.CharField(max_length=10, default='ongoing')
    introduction = models.TextField(blank=True)
    background = models.TextField(blank=True)
    scope_of_work = models.TextField(blank=True)
    objective = models.CharField(max_length=2000, blank=True)
    project_duration = models.CharField(max_length=100, blank=True)
    funding = models.CharField(max_length=100, blank=True)
    estimated_completion_date =  models.CharField(max_length=100, blank=True)
    other_description = models.TextField(blank=True)
    publisher = models.ForeignKey(User, on_delete=models.CASCADE)
    publish_date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return str(self.pk) + ") " + self.title

    def introduction_html(self):
        return md.convert(self.introduction)


class Role(models.Model):
    role_name =  models.CharField(max_length=200)
    project = models.ForeignKey(Status, on_delete=models.CASCADE)
    
    def __str__(self):
        return self.role_name + ' @ Project: ' + self.project.title


# https://docs.djangoproject.com/en/4.0/topics/db/examples/many_to_many/
# https://stackoverflow.com/questions/5090047/django-create-a-model-that-lets-you-insert-multiple-values-for-the-same-field
class Person(models.Model):
    name = models.CharField(max_length=200, blank=True, null=True)
    about = models.TextField(max_length=500, blank=True, null=True)
    profile_pic = models.ImageField(upload_to='uploads/profile_pictures', default='uploads/profile_pictures/default.png', blank=True)
    role = models.ForeignKey(Role, on_delete=models.CASCADE)
    #role = models.ManyToManyField(Role)

    def __str__(self):
        return self.name 





