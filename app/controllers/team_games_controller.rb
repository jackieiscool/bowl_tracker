class TeamGamesController < ApplicationController

	def new
		@team = Team.find(params[:team_id])
		@bowlers = @team.bowlers
		@game = IndividualGame.new
		@team_game = TeamGame.new
	end

	def create

	end

end