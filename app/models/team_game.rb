class TeamGame < ActiveRecord::Base
	belongs_to :team
	has_many :individual_games
end
