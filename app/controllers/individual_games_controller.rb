class IndividualGamesController < ApplicationController

def index
end

def new
	@game = IndividualGame.new
end

def create
	@game = IndividualGame.new(params[:individual_game])
	@game.bowler_id = params[:bowler_id]
	if @game.save 
		redirect_to bowler_path(params[:bowler_id])
	else
		render :new
	end
end

def edit
end

def update
end

def destroy
end

end