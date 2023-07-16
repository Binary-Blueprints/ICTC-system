from django.urls import path
from django.views.generic import FormView
from django.urls import re_path

from project_management.views import *

urlpatterns = [
    path('status/ongoing', StatusViewOngoing.as_view(), name='status'),
    path('status/completed', StatusViewCompleted.as_view(), name='status-completed'),
    path('status/detail/<int:pk>/', StatusDetail.as_view(), name='status-detail'),
    path('status/create', StatusCreate.as_view(), name='status-create'),
    path('status/edit/<int:pk>/', StatusEdit.as_view(), name='status-edit'),
    path('status/delete/<int:pk>/', StatusDelete.as_view(), name='status-delete'),
    path('person/add/<int:project_id>/', AddCollaborator.as_view(), name='add-person'),
    path('role/add/<int:project_id>/', AddRole.as_view(), name='add-role'),
    path('role/add/', AddRoleForAnyProject.as_view(), name='add-role'),

    path('role/delete/<int:pk>', DeleteRole.as_view(), name='delete-role'),
    path('person/delete/<int:pk>', DeleteCollaborator.as_view(), name='delete-person'),
]
