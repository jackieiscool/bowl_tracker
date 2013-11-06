# == Schema Information
#
# Table name: team_games
#
#  id         :integer          not null, primary key
#  score      :integer
#  created_at :datetime
#  updated_at :datetime
#  team_id    :integer
#

class TeamGame < ActiveRecord::Base
  attr_accessible :team_id

	belongs_to :team
	has_many :individual_games

  validates :team, presence: true
end
