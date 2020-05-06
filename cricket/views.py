from django.shortcuts import render, redirect
from django.views import View
from . models import *

# Create your views here.


class Index(View):
    def get(self, request, *args, **kwargs):
        teams = Team.objects.filter(is_active=1)
        context = {'teams': teams}
        return render(request, 'index.html', context)

    def post(self, request, *args, **kwargs):
        team_one_post = request.POST.get('team_one', None)
        team_two_post = request.POST.get('team_two', None)
        if team_one_post is 0:
            teams = Team.objects.filter(is_active=1)
            context = {'teams': teams}
            return render(request, 'index.html', context)
        if team_two_post is 0:
            teams = Team.objects.filter(is_active=1)
            context = {'teams': teams}
            return render(request, 'index.html', context)

        all_match = []
        matches = Match.objects.filter(match_team_one=team_one_post, match_team_two=team_two_post, is_active=1)
        for match in matches:
            team_one = Team.objects.get(id=match.match_team_one)
            team_two = Team.objects.get(id=match.match_team_two)
            team_winner = Team.objects.get(id=match.match_winner)
            temp = {'id': match.id, 'match_title': match.match_title, 'match_date': match.match_date,
                    'match_team_one_id': match.match_team_one, 'match_team_one': team_one.name,
                    'match_team_one_logo': team_one.logo_uri,
                    'match_team_two_id': match.match_team_two, 'match_team_two': team_two.name,
                    'match_team_two_logo': team_two.logo_uri, 'team_winner_id': match.match_winner,
                    'team_winner': team_winner.name, 'team_winner_logo': team_winner.logo_uri}
            all_match.append(temp)

        matches = Match.objects.filter(match_team_one=team_two_post, match_team_two=team_one_post, is_active=1)
        for match in matches:
            team_one = Team.objects.get(id=match.match_team_one)
            team_two = Team.objects.get(id=match.match_team_two)
            team_winner = Team.objects.get(id=match.match_winner)
            temp = {'id': match.id, 'match_title': match.match_title, 'match_date': match.match_date,
                    'match_team_one_id': match.match_team_one, 'match_team_one': team_one.name,
                    'match_team_one_logo': team_one.logo_uri,
                    'match_team_two_id': match.match_team_two, 'match_team_two': team_two.name,
                    'match_team_two_logo': team_two.logo_uri, 'team_winner_id': match.match_winner,
                    'team_winner': team_winner.name, 'team_winner_logo': team_winner.logo_uri}
            all_match.append(temp)

        teams = Team.objects.filter(is_active=1)
        context = {'teams': teams, 'matches': all_match, 'team_one': team_one_post, 'team_two': team_two_post}
        return render(request, 'index.html', context)


class Teams(View):
    def get(self, request, *args, **kwargs):
        team = request.GET.get('id', None)
        if team is None:
            all_teams = Team.objects.filter(is_active=1)
            context = {'teams': all_teams}
            return render(request, 'teams.html', context)
        else:
            all_teams = Team.objects.get(id=team)
            match_one = Match.objects.filter(match_team_one=team, is_active=1).count()
            match_two = Match.objects.filter(match_team_two=team, is_active=1).count()
            all_match = match_one + match_two
            all_wins = Match.objects.filter(match_winner=team, is_active=1).count()
            all_losts = all_match - all_wins
            all_points = PointsTable.objects.get(id=team)
            context = {'teams': all_teams, 'matches': all_match, 'wins': all_wins, 'lost': all_losts, 'points': all_points.points}
            return render(request, 'team.html', context)

    def post(self, request, *args, **kwargs):
        pass


class Players(View):
    def get(self, request, *args, **kwargs):
        team = request.GET.get('id', None)
        team_name = Team.objects.get(id=team)
        # if team is None or not isinstance(team, int):
        if team is None:
            return redirect('/teams/')

        all_players = Player.objects.filter(country=team, is_active=1)
        context = {'players': all_players, 'team_name': team_name.name}
        return render(request, 'players.html', context)

    def post(self, request, *args, **kwargs):
        pass


class PlayerDetails(View):
    def get(self, request, *args, **kwargs):
        player = request.GET.get('id', None)
        # if team is None or not isinstance(team, int):
        if player is None:
            return redirect('/teams/')

        player = Player.objects.get(id=player)
        team_name = Team.objects.get(id=player.country)
        context = {'player': player, 'team_name': team_name.name}
        return render(request, 'player.html', context)

    def post(self, request, *args, **kwargs):
        pass


class Matches(View):
    def get(self, request, *args, **kwargs):
        all_matches = []
        matches = Match.objects.filter(is_active=1)
        for match in matches:
            team_one = Team.objects.get(id=match.match_team_one)
            team_two = Team.objects.get(id=match.match_team_two)
            team_winner = Team.objects.get(id=match.match_winner)
            temp = {'id': match.id, 'match_title': match.match_title, 'match_date': match.match_date, 'match_team_one_id': match.match_team_one, 'match_team_one': team_one.name, 'match_team_one_logo': team_one.logo_uri,
                    'match_team_two_id': match.match_team_two, 'match_team_two': team_two.name, 'match_team_two_logo': team_two.logo_uri, 'team_winner_id': match.match_winner, 'team_winner': team_winner.name, 'team_winner_logo': team_winner.logo_uri}
            all_matches.append(temp)

        context = {'matches': all_matches}
        return render(request, 'matches.html', context)

    def post(self, request, *args, **kwargs):
        pass


class Points(View):
    def get(self, request, *args, **kwargs):
        points_all = []
        points = PointsTable.objects.filter(is_active=1)
        for point in points:
            team = Team.objects.get(id=point.team)
            temp = {
                'id': point.id,
                'team': team.id,
                'team_name': team.name,
                'team_logo': team.logo_uri,
                'points': point.points,
                'date': point.created_date
            }
            points_all.append(temp)

        context = {'points': points_all}
        return render(request, 'pointstable.html', context)

    def post(self, request, *args, **kwargs):
        pass

