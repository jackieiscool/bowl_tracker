class Team < ActiveRecord::Base
	attr_accessible :name
	has_many :bowler_teams
	has_many :bowlers, through: :bowler_teams
end
