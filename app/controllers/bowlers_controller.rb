class BowlersController < ApplicationController

	def new
		
	end

	def show
		@bowler = current_bowler
		@game = IndividualGame.new
		@games = @bowler.individual_games
    @team = Team.new
	end

end