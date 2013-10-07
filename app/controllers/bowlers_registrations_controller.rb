class BowlersRegistrationsController < Devise::RegistrationsController

	def create
		@bowler = Bowler.new(params[:bowler])
		@bowler.teams << Team.find_by_name(params[:bowler][:teams])
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
