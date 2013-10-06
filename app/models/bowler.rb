class Bowler < ActiveRecord::Base
	has_many :individual_games
	belongs_to :team

	validates_presence_of :email
	validates_presence_of :password
	validates_presence_of :password_confirmation
end
