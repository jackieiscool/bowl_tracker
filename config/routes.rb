BowlTracker::Application.routes.draw do
  
  root to: 'teams#index'

  devise_for :bowlers, controllers: { registrations: "bowlers_registrations"}

  resources :bowlers, only: [:show]

  resources :teams

  resources :individual_games

  resources :team_games

end
