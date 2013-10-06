BowlTracker::Application.routes.draw do
  devise_for :bowlers, controllers: { registrations: "bowlers"}

  resources :bowlers

end
