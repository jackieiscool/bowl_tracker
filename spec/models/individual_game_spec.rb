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

require 'spec_helper'

describe IndividualGame do
  pending "add some examples to (or delete) #{__FILE__}"
end
