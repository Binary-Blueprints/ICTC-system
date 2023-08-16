from django.shortcuts import render, redirect
from django.views import View
from django.views.generic.edit import UpdateView, DeleteView
from django.db.models import Q
from django.urls import reverse_lazy
from django.http import HttpResponseRedirect
from django.contrib.auth.mixins import UserPassesTestMixin, LoginRequiredMixin
from django.http import HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import get_object_or_404

from user.models import UserProfile
from .models import *
from .forms  import *


class StatusViewOngoing(View):
    def get(self, request, *args, **kwargs):
        form = StatusForm()
        posts = Status.objects.all().order_by('-publish_date')
        context = {
            'posts': posts
        }

        return render(request, 'project_management/status_ongoing.html', context)


class StatusViewCompleted(View):
    def get(self, request, *args, **kwargs):
        form = StatusForm()
        posts = Status.objects.all().order_by('-publish_date')
        context = {
            'posts': posts
        }

        return render(request, 'project_management/status_completed.html', context)


class StatusDetail(View):
    def get(self, request, pk, *args, **kwargs):
        post = get_object_or_404(Status, pk=pk)
        return render(request, 'project_management/status_detail.html', {'post': post})

    def post(self, request, pk, *args, **kwargs):
        post = Status.objects.get(pk=pk)
        if UserProfile.objects.get(pk=request.user.pk).project_management_permission:
            if  'ongoing' in post.state_of_project:
                post.state_of_project = 'completed'
            else:
                post.state_of_project = 'ongoing'
            post.save()
        else:
            return render(request, 'posts/no_permission.html')
 
        return HttpResponseRedirect(request.META.get('HTTP_REFERER'))


class StatusCreate(View):
    def get(self, request, *args, **kwargs):
        form = StatusForm()
        context = {
            'form': form,
        }

        return render(request, 'project_management/status_create.html', context)

    def post(self, request, *args, **kwargs):
        project_management_permission = UserProfile.objects.get(pk=request.user.pk).project_management_permission
        form = StatusForm(request.POST, request.FILES)
        if form.is_valid():
            if project_management_permission:
                new_post = form.save(commit=False)
                new_post.publisher = request.user
                new_post.save()
                form = StatusForm() # Clearing the form after submission
            else:
                return render(request, 'posts/no_permission.html')

        return HttpResponseRedirect(reverse('add-person', kwargs={'project_id': new_post.pk}))
        #return redirect('status')


class StatusEdit(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Status
    fields = ['title', 'introduction', 'background', 'scope_of_work', 'objective', 'project_duration', 'funding', 'estimated_completion_date', 'other_description']
    template_name = 'project_management/status_edit.html'

    def get_success_url(self):
        pk = self.kwargs['pk']
        return reverse('add-person', kwargs={'project_id': pk})

    def test_func(self):
        post = self.get_object()
        return self.request.user == post.publisher or self.request.user.is_superuser


class StatusDelete(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Status
    template_name = 'project_management/status_delete.html'
    success_url = reverse_lazy('status')

    def test_func(self):
        post = self.get_object()
        return self.request.user == post.publisher


class AddRoleForAnyProject(View):
    def get(self, request, *args, **kwargs):
        form = RoleForm()
        context = {
            'form': form,
        }

        return render(request, 'project_management/add_role_for_any_project.html', context)

    def post(self, request, *args, **kwargs):
        form = RoleForm(request.POST, request.FILES)
        if form.is_valid():
            new_role = form.save(commit=False)
            new_role.save()
            form = RoleForm() # Clearing the form after submission

        return redirect('add-role')


class AddRole(View):
    def get(self, request, project_id, *args, **kwargs):
        project = get_object_or_404(Status, pk=project_id)
        context = {
            'project': project,
        }
        return render(request, 'project_management/add_role.html', context)

    def post(self, request, project_id, *args, **kwargs):
        project = Status.objects.get(id=project_id)
        form = RoleForm(request.POST, request.FILES)
        if form.is_valid():
            new_role = form.save(commit=False)
            new_role.save()
            form = RoleForm() # Clearing the form after submission
        return HttpResponseRedirect(reverse('add-role', kwargs={'project_id': project_id}))


class AddCollaborator(View):
    def get(self, request, project_id, *args, **kwargs):
        project = get_object_or_404(Status, pk=project_id)
        form = CollaboratorForm()
        # form.collborating_project = Status.objects.get(pk=project_id)
        # form.save()
        # initial={'collborating_project':project_id}
        context = {
            'project': project,
            'form':form
        }
        return render(request, 'project_management/add_collaborator.html', context)

    def post(self, request, project_id, *args, **kwargs):
        form = CollaboratorForm(request.POST, request.FILES)
        # form.cleaned_data["collborating_project"] = project_id
        # form.data["collborating_project"] = project_id
        if form.is_valid():
            new_collaborator = form.save(commit=False)
            new_collaborator.collborating_project = Status.objects.get(pk = project_id)
            new_collaborator.save()
            form = CollaboratorForm() # Clearing the form after submission
        return HttpResponseRedirect(reverse('add-person', kwargs={'project_id': project_id}))
        

class DeleteRole(View):
    def get(self, request, pk, *args, **kwargs):
        r = Role.objects.get(pk = pk)
        r.delete()

        return redirect(request.META['HTTP_REFERER'])

class DeleteCollaborator(View):
    def get(self, request, pk, *args, **kwargs):
        p = Collaborator.objects.get(pk = pk)
        p.delete()

        return redirect(request.META['HTTP_REFERER'])


