"""api URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path, include
from cricket.views import *
# from django.views.decorators.csrf import csrf_exempt

from . import views

urlpatterns = [
    path('', Index.as_view(), name='index'),
    path('search/', Index.as_view(), name='search'),
    path('teams/', Teams.as_view(), name='teams'),
    path('players/', Players.as_view(), name='players'),
    path('player/', PlayerDetails.as_view(), name='playerdetrails'),
    path('matches/', Matches.as_view(), name='matches'),
    path('team/', Teams.as_view(), name='team'),
    path('points/', Points.as_view(), name='points')
]
