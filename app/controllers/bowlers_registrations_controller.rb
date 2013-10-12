class BowlersRegistrationsController < Devise::RegistrationsController

	def new
		@bowler = Bowler.new
		@teams = Team.all.map {|x| x.name}
		@teams << "No Team"
	end

	def create
		@bowler = Bowler.new(params[:bowler])
		team = Team.find_by_name(params[:bowler][:teams])
		@bowler.teams << team if team
		if @bowler.save
			sign_in(@bowler)
			redirect_to bowler_path(@bowler.id)
		else
			render :new
		end
	end

	def edit
		super
	end

	def update
		super
	end
end
