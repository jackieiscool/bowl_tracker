BowlTracker::Application.routes.draw do
  
  root to: 'teams#index'

  devise_for :bowlers, controllers: { registrations: "bowlers_registrations"}

  resources :bowlers, only: [:show] do
  	resources :teams, only: [:new]
  end

  resources :teams, except: [:new] do
  	resources :team_games
  end

  resources :individual_games

end
