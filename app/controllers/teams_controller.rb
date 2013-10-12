class TeamsController < ApplicationController

	def index
		@teams = current_bowler.teams
	end

	def show
		@team = Team.find(params[:id])
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(params[:team])
		binding.pry
		bowler = Bowler.find(params[:id])
		if @team.save
			bowler.teams << @team
			redirect_to team_path(@team.id)
		else
			render :new
		end
	end

	def edit
		@team = Team.find(params[:id])
	end

	def update
		@team = Team.find(params[:id])
		if @team.update_attributes(params[:team])
			render @team
		else
			render :new
		end
	end

	def destroy
		team = Team.find(params[:id]) 
		team.destroy
		redirect_to root_path
	end
end
