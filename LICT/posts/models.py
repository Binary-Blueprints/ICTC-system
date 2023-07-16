from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
import uuid
import markdown

md = markdown.Markdown()


class Post(models.Model):
    title = models.CharField(max_length=200)
    body = models.TextField()
    publisher = models.ForeignKey(User, on_delete=models.CASCADE)
    publish_date = models.DateTimeField(default=timezone.now)
    research_file = models.FileField(null=True,blank=True,upload_to='uploads/research_post/')
    
    def __str__(self):
        return self.title

    def summary(self):
        return md.convert(self.body[:300])

    def pretty_date(self):
        return self.publish_date.strftime('%b %e %Y')

    def body_html(self):
        return md.convert(self.body)


    def collaborator_roles(self):
        collaborators = self.post_collaborator.all()
        collaborator_role = {}
        
        role_ = collaborators.values('role__role_name')

        for role in role_:
            collaborator_role[role['role__role_name']] = list(collaborators.filter(role__role_name=role['role__role_name']))

        return collaborator_role

class ResearchDomains(models.Model):
    title = models.CharField(max_length=200)
    body = models.TextField()
    publisher = models.ForeignKey(User, on_delete=models.CASCADE)
    publish_date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.title

    def pretty_date(self):
        return self.publish_date.strftime('%b %e %Y')

    def body_html(self):
        return md.convert(self.body)



class ResearchPublicationList(models.Model):
    _uuid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=2000)
    publisher = models.ForeignKey(User, on_delete=models.CASCADE)
    publish_date = models.DateTimeField(default=timezone.now)

    research_paper = models.FileField(null=True,blank=True, upload_to='uploads/research_paper/')
    link_to_project = models.URLField(null=True,blank=True)
    researchers = models.ManyToManyField(User, related_name='Publication')
    external_researchers = models.CharField(max_length=400, blank=True, null=True)
    published_at = models.CharField(max_length=400, blank=True)

    created_at = models.DateTimeField(default=timezone.now)

    class Meta:
        verbose_name = "Research Publications"
        verbose_name_plural = "Research Publications"
    
    def __str__(self):
        return self.name

    def researcher_list(self):
        internal_researchers = [ researcher.get_full_name() for researcher in self.researchers.all() ]
        external_researchers = self.external_researchers.split(',')
        researchers = internal_researchers + external_researchers

        researchers = ', '.join(researchers)
        return researchers

    def project_name(self):
        researchers = self.researcher_list()
        publication = str(self.name)
        published_at = str(self.published_at)
        published_date = str(self.publish_date.date())[:4]

        return f"{researchers} ({published_date}). {publication} {published_at}"

class Collaborator(models.Model):
    role = models.ForeignKey('project_management.Role', on_delete= models.CASCADE, related_name = 'post_collaborator')
    collaborating_user = models.ForeignKey(User, on_delete= models.CASCADE, related_name = 'post_collaborator')
    collborating_post = models.ForeignKey('posts.Post', on_delete= models.CASCADE, related_name='post_collaborator')
    
    def __str__(self):
        return str(self.collaborating_user.profile.name) + " : " + str(self.role) + " @ " + str(self.collborating_post.title)
    
    def collaborator_name(self):
        return str(self.collaborating_user.username)



class News(models.Model):
    title = models.CharField(max_length=200)
    body = models.TextField()
    publisher = models.ForeignKey(User, on_delete=models.CASCADE)
    publish_date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.title

    def pretty_date(self):
        return self.publish_date.strftime('%b %e %Y')

    def body_html(self):
        return md.convert(self.body)
