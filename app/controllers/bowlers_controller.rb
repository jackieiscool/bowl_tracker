class BowlersController < ApplicationController

	def new
		
	end

	def show
		@bowler = current_bowler
		@games = @bowler.individual_games
	end

end