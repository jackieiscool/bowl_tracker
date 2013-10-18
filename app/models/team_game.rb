# == Schema Information
#
# Table name: team_games
#
#  id         :integer          not null, primary key
#  score      :integer
#  created_at :datetime
#  updated_at :datetime
#

class TeamGame < ActiveRecord::Base
	belongs_to :team
	has_many :individual_games

  validates :team, presence: true
end
