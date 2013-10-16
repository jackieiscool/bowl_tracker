# == Schema Information
#
# Table name: bowlers
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string(255)
#

require 'spec_helper'

describe Bowler do

  let(:bowler) { FactoryGirl.create(:bowler) }

  it { should have_many(:bowler_teams) }
  it { should have_many(:teams) }
  it { should have_many(:individual_games) }

  describe ".average" do
    it "should return a bowlers average" do
      bowler.average.should == 0
    end
  end

end
