require 'spec_helper'

describe BowlersController do

  let(:bowler) { FactoryGirl.create(:bowler) }
  let(:individual_game) { FactoryGirl.create(:individual_game) }

  before :each do
    sign_in bowler
  end

  describe "GET show" do

    it "should assign bowler" do
      get :show, id: bowler.id
      expect(assigns(:bowler)).to eq(bowler)
    end

    it "should assign games" do
      bowler.individual_games << individual_game
      get :show, id: bowler.id
      expect(assigns(:individual_game)).to eq([individual_game])
    end

  end
end
