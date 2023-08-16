from typing import Any
from django.http import HttpRequest, HttpResponse
from django.views import View
from django.urls import reverse_lazy
from django.shortcuts import render, redirect
from django.views.generic.edit import UpdateView, DeleteView, CreateView
from django.contrib.auth.mixins import UserPassesTestMixin, LoginRequiredMixin
from django.contrib.auth.models import User
from .models import UserProfile
from posts.models import Post
from project_management.models import Collaborator

# Create your views here.
class ProfileView(View):
    def get(self, request, pk, *args, **kwargs):
        profile = UserProfile.objects.get(pk=pk)
        user = profile.user
        posts = Post.objects.filter(publisher=user).order_by('-publish_date')
        projects = Collaborator.objects.filter(collaborating_user = user)
        
        context = {
            'user': user,
            'profile': profile,
            'posts': posts,
            'projects':projects,
        }

        return render(request, 'user/profile.html', context)

class UserCreateView(LoginRequiredMixin, UserPassesTestMixin, CreateView):
    model = User
    fields = ['first_name','last_name','username', 'password', 'email', 'is_active']
    template_name = 'user/create_user.html'

    def get_success_url(self):
        return reverse_lazy('home')

    def test_func(self):
        return True
    
# class ProfileCreateView(LoginRequiredMixin, UserPassesTestMixin, CreateView):
#     model = UserProfile
#     fields = ['user','name', 'bio', 'designation', 'profile_pic', 'is_researcher','posting_permission']
#     template_name = 'user/profile_create.html'

#     def get_success_url(self):
#         pk = self.kwargs['pk']
#         return reverse_lazy('profile', kwargs={'pk': pk})
    
#     def test_func(self):
#         return self.request.user.is_superuser
    
        
class ProfileEditView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = UserProfile
    fields = ['name', 'bio', 'designation', 'profile_pic']
    template_name = 'user/profile_edit.html'

    def get_success_url(self):
        pk = self.kwargs['pk']
        return reverse_lazy('profile', kwargs={'pk': pk})

    
    def test_func(self):
        profile = self.get_object()
        return self.request.user == profile.user or self.request.user.is_superuser


class EditPermissionView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = UserProfile
    fields = ['posting_permission', 'project_management_permission']
    template_name = 'user/give_permission.html'

    def get_success_url(self):
        return reverse_lazy('manage-permission')

    def test_func(self):
        return self.request.user.is_superuser


class ManagePermissionView(LoginRequiredMixin, UserPassesTestMixin, View):
    def get(self, request, *args, **kwargs):
        profiles = UserProfile.objects.all()
        context = {
            'profiles': profiles,
        }
        return render(request, 'user/manage_permissions.html', context)

    def test_func(self):
        return self.request.user.is_superuser
