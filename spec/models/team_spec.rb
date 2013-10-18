# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Team do

  it { should have_many(:bowler_teams) }
  it { should have_many(:bowlers) }

  it { should validate_presence_of(:name) }

end
