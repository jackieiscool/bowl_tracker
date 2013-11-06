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

  it { should belong_to(:bowler) }
  it { should belong_to(:team_game) }
  it { should validate_presence_of(:score) }

end
