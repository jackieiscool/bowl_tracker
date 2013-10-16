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

require 'spec_helper'

describe BowlerTeam do
  
  it { should belong_to(:bowler) }
  it { should belong_to(:team) }

  it { should validate_presence_of(:bowler) }
  it { should validate_presence_of(:team) }

end
