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

require 'spec_helper'

describe TeamGame do

  it { should belong_to(:team) }
  it { should have_many(:individual_games) }

  it { should validate_presence_of(:team) }

end
