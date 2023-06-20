from django import forms

from markdownx.fields import MarkdownxFormField

from .models import *


class StatusForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(StatusForm, self).__init__(*args, **kwargs)
        self.fields['estimated_completion_date'].label = "Estimated Completion Date (YYYY-MM-DD)"
        self.fields['introduction'].label = "Introduction (You can drag & drop images into this field)"
        self.fields['background'].widget=forms.Textarea(attrs={'rows': 2})
        self.fields['scope_of_work'].widget=forms.Textarea(attrs={'rows': 2})
        self.fields['other_description'].widget=forms.Textarea(attrs={'rows': 5})

    introduction = MarkdownxFormField()
    state_of_project = forms.CharField(label='State of the project', widget=forms.Select(choices=[('ongoing', 'Ongoing'),
                                                                                                  ('completed', 'Completed')]))
  
    class Meta:
        model = Status
        fields = ['title', 'state_of_project', 'introduction', 'objective', 'project_duration', 'background', 'scope_of_work',  'funding', 'estimated_completion_date', 'other_description']


class RoleForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(RoleForm, self).__init__(*args, **kwargs)

    class Meta:
        model = Role
        fields = ['role_name', 'project']


class PersonForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(PersonForm, self).__init__(*args, **kwargs)

    # role = forms.ModelChoiceField(queryset=Role.objects.all())

    class Meta:
        model = Person
        fields = ['name', 'about', 'role', 'profile_pic']

