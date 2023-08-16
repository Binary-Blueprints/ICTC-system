from django.urls import path
from .views import *

urlpatterns = [
    path('profile/create/user/', UserCreateView.as_view(), name='user-create'),
    # path('profile/create/<int:pk>', ProfileCreateView.as_view(), name='profile-create'),
    path('profile/<int:pk>/', ProfileView.as_view(), name='profile'),
    path('profile/edit/<int:pk>/', ProfileEditView.as_view(), name='profile-edit'),
    path('profile/edit-permission/<int:pk>/', EditPermissionView.as_view(), name='edit-permission'),
    path('manage-permissions/', ManagePermissionView.as_view(), name='manage-permission'),
]
 
