class TeamGamesController < ApplicationController

	def new
		@team = Team.find(params[:team_id])
		@bowlers = @team.bowlers
		@game = IndividualGame.new
		@team_game = TeamGame.new
	end

	def create
    team_game = TeamGame.create(team_id: params[:team_id])
    games = params[:games]
    games.each_value do |g|
      i = IndividualGame.new(g)
      i.team_game = team_game
      i.save
    end
    redirect_to team_path(params[:team_id])
	end

end