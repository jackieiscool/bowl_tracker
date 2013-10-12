# == Schema Information
#
# Table name: individual_games
#
#  id           :integer          not null, primary key
#  frames       :hstore
#  score        :integer
#  bowler_id    :integer
#  team_game_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class IndividualGame < ActiveRecord::Base
	belongs_to :bowler

	validates :score, presence: true
end
