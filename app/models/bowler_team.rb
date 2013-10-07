class BowlerTeam < ActiveRecord::Base
	belongs_to :bowler
	belongs_to :team
end
