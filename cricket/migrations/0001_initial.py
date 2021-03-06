# Generated by Django 2.2.8 on 2020-05-05 22:17

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Match',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('match_title', models.CharField(max_length=255)),
                ('match_date', models.CharField(max_length=255)),
                ('match_team_one', models.IntegerField()),
                ('match_team_two', models.IntegerField()),
                ('match_winner', models.IntegerField()),
                ('is_active', models.IntegerField(default=1)),
                ('created_date', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'match',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Player',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('first_name', models.CharField(max_length=255)),
                ('last_name', models.CharField(max_length=255)),
                ('image_uri', models.CharField(max_length=255)),
                ('player_jursey_no', models.CharField(max_length=255)),
                ('country', models.CharField(max_length=255)),
                ('total_matches', models.CharField(max_length=255)),
                ('total_run', models.CharField(max_length=255)),
                ('highest_score', models.CharField(max_length=255)),
                ('total_fifties', models.CharField(max_length=255)),
                ('total_hundreds', models.CharField(max_length=255)),
                ('is_active', models.IntegerField(default=1)),
                ('created_date', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'player',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='PointsTable',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('team', models.IntegerField()),
                ('points', models.IntegerField()),
                ('is_active', models.IntegerField(default=1)),
                ('created_date', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'points_table',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Team',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=255)),
                ('logo_uri', models.CharField(max_length=255)),
                ('club_state', models.CharField(max_length=255)),
                ('is_active', models.IntegerField(default=1)),
                ('created_date', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'team',
                'managed': True,
            },
        ),
    ]
