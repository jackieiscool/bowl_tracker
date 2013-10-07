class IndividualGamesController < ApplicationController

def index
end

def new
	@game = IndividualGame.new
end

def create
	@game = IndividualGame.new(params[:individual_game])
	@game.bowler = current_bowler
	if @game.save 
		redirect_to bowler_path(current_bowler.id)
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