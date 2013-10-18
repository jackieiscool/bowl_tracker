FactoryGirl.define do

  factory :bowler do
    name "Jackie"
    email "fake@email.com"
    password "password"
    password_confirmation "password"
  end

  factory :individual_game do
    score 200
    association :bowler
  end
end