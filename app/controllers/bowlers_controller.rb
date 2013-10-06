class BowlersController < ApplicationController

	def new
		@bowler = Bowler.new
		@teams = Team.all.map { |team| team.name }
	end

	def create
		@bowler = Bowler.new(params[:bowler])
		@bowler.team = Team.find_by_name(params[:bowler][:team])
		if @bowler.save
			redirect_to bowler_path(@bowler.id)
		else
			render :new
		end
	end

	def show
		@bowler = Bowler.find(params[:id])
	end
end
