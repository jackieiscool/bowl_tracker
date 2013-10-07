class BowlersController < ApplicationController

	def show
		@bowler = Bowler.find(params[:id])
	end

end