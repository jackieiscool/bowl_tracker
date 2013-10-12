class BowlersController < ApplicationController

	def new
		
	end

	def show
		@bowler = Bowler.find(params[:id])
		@games = @bowler.individual_games
	end

end