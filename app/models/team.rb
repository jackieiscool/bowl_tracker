# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Team < ActiveRecord::Base
	attr_accessible :name
	has_many :bowler_teams
	has_many :bowlers, through: :bowler_teams

	validates_presence_of :name
end
