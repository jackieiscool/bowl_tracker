# == Schema Information
#
# Table name: bowler_teams
#
#  id         :integer          not null, primary key
#  bowler_id  :integer
#  team_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class BowlerTeam < ActiveRecord::Base
	belongs_to :bowler
	belongs_to :team
end
