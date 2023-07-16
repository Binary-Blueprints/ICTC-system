import markdown

from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from operator import attrgetter
from itertools import chain
from django.db.models import Count,F

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
    estimated_completion_date =  models.DateField(max_length=100, blank=True)
    other_description = models.TextField(blank=True)
    publisher = models.ForeignKey(User, on_delete=models.CASCADE)
    publish_date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return str(self.pk) + ") " + self.title

    def introduction_html(self):
        return md.convert(self.introduction)

    def collaborator_roles(self):
        collaborators = self.collaborator.all()
        collaborator_role = {}
        
        role_ = collaborators.values('role__role_name')

        for role in role_:
            collaborator_role[role['role__role_name']] = list(collaborators.filter(role__role_name=role['role__role_name']))

        return collaborator_role
    
        

class Role(models.Model):
    role_name =  models.CharField(max_length=200)
    role_description = models.CharField(max_length=200)
        
    def __str__(self):
        return self.role_name

class Collaborator(models.Model):
    role = models.ForeignKey('project_management.Role', on_delete= models.CASCADE )
    collaborating_user = models.ForeignKey(User, on_delete= models.CASCADE)
    collborating_project = models.ForeignKey('project_management.Status', on_delete= models.CASCADE, related_name='collaborator')
    
    def __str__(self):
        return str(self.collaborating_user.profile.name) + " : " + str(self.role) + " @ " + str(self.collborating_project.title)
    
    def collaborator_name(self):
        return str(self.collaborating_user.username)

    




