from django.db import models

# Create your models here.


class Team(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255, unique=False)
    logo_uri = models.CharField(max_length=255, unique=False)
    club_state = models.CharField(max_length=255, unique=False)
    is_active = models.IntegerField(default=1)
    created_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = True
        db_table = 'team'


class Player(models.Model):
    id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=255, unique=False)
    last_name = models.CharField(max_length=255, unique=False)
    image_uri = models.CharField(max_length=255, unique=False)
    player_jursey_no = models.CharField(max_length=255, unique=False)
    country = models.CharField(max_length=255, unique=False)
    total_matches = models.CharField(max_length=255, unique=False)
    total_run = models.CharField(max_length=255, unique=False)
    highest_score = models.CharField(max_length=255, unique=False)
    total_fifties = models.CharField(max_length=255, unique=False)
    total_hundreds = models.CharField(max_length=255, unique=False)
    is_active = models.IntegerField(default=1)
    created_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = True
        db_table = 'player'


class Match(models.Model):
    id = models.AutoField(primary_key=True)
    match_title = models.CharField(max_length=255, unique=False)
    match_date = models.CharField(max_length=255, unique=False)
    match_team_one = models.IntegerField(unique=False)
    match_team_two = models.IntegerField(unique=False)
    match_winner = models.IntegerField(unique=False)
    is_active = models.IntegerField(default=1)
    created_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = True
        db_table = 'match'


class PointsTable(models.Model):
    id = models.AutoField(primary_key=True)
    team = models.IntegerField(unique=False)
    points = models.IntegerField(unique=False)
    is_active = models.IntegerField(default=1)
    created_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = True
        db_table = 'points_table'
