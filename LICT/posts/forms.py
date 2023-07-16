# FOR HELP: https://simpleisbetterthancomplex.com/tutorial/2018/11/28/advanced-form-rendering-with-django-crispy-forms.html
from django import forms

from markdownx.fields import MarkdownxFormField

from .models import *

class PostForm(forms.ModelForm):
    body = MarkdownxFormField()

    class Meta:
        model = Post
        fields = [ 'title', 'body', 'research_file']


class ResearchDomainForm(forms.ModelForm):
    body = MarkdownxFormField()

    class Meta:
        model = ResearchDomains
        fields = [ 'title', 'body']


class ResearchPublicationForm(forms.ModelForm):
    class Meta:
        model = ResearchPublicationList
        fields = ['name','research_paper','link_to_project','researchers','external_researchers','publish_date','published_at']

    def __init__(self, *args, **kwargs):
        super(ResearchPublicationForm, self).__init__(*args,**kwargs)
        self.fields["researchers"].widget = forms.widgets.CheckboxSelectMultiple()
        self.fields["researchers"].queryset = User.objects.filter(profile__is_researcher = True)


class NewsForm(forms.ModelForm):
    body = MarkdownxFormField()

    class Meta:
        model = News
        fields = [ 'title', 'body']

class CollaboratorForm(forms.ModelForm):
    class Meta:
        model = Collaborator
        fields = ['role', 'collaborating_user']
        
