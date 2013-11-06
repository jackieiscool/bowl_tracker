BowlTracker::Application.routes.draw do
  
  root to: 'bowlers#show', id: 1

  devise_for :bowlers, controllers: { registrations: "bowlers_registrations"}

  resources :bowlers, only: [:show] do
  	resources :teams, only: [:new]
  end

  resources :teams, except: [:new] do
  	resources :team_games
  end

  resources :team_games, only: [:create]

  resources :individual_games

end
#== Route Map
# Generated on 06 Nov 2013 12:22
#
#                       root GET    /                                             bowlers#show {:id=>1}
#         new_bowler_session GET    /bowlers/sign_in(.:format)                    devise/sessions#new
#             bowler_session POST   /bowlers/sign_in(.:format)                    devise/sessions#create
#     destroy_bowler_session DELETE /bowlers/sign_out(.:format)                   devise/sessions#destroy
#            bowler_password POST   /bowlers/password(.:format)                   devise/passwords#create
#        new_bowler_password GET    /bowlers/password/new(.:format)               devise/passwords#new
#       edit_bowler_password GET    /bowlers/password/edit(.:format)              devise/passwords#edit
#                            PATCH  /bowlers/password(.:format)                   devise/passwords#update
#                            PUT    /bowlers/password(.:format)                   devise/passwords#update
# cancel_bowler_registration GET    /bowlers/cancel(.:format)                     bowlers_registrations#cancel
#        bowler_registration POST   /bowlers(.:format)                            bowlers_registrations#create
#    new_bowler_registration GET    /bowlers/sign_up(.:format)                    bowlers_registrations#new
#   edit_bowler_registration GET    /bowlers/edit(.:format)                       bowlers_registrations#edit
#                            PATCH  /bowlers(.:format)                            bowlers_registrations#update
#                            PUT    /bowlers(.:format)                            bowlers_registrations#update
#                            DELETE /bowlers(.:format)                            bowlers_registrations#destroy
#            new_bowler_team GET    /bowlers/:bowler_id/teams/new(.:format)       teams#new
#                     bowler GET    /bowlers/:id(.:format)                        bowlers#show
#            team_team_games GET    /teams/:team_id/team_games(.:format)          team_games#index
#                            POST   /teams/:team_id/team_games(.:format)          team_games#create
#         new_team_team_game GET    /teams/:team_id/team_games/new(.:format)      team_games#new
#        edit_team_team_game GET    /teams/:team_id/team_games/:id/edit(.:format) team_games#edit
#             team_team_game GET    /teams/:team_id/team_games/:id(.:format)      team_games#show
#                            PATCH  /teams/:team_id/team_games/:id(.:format)      team_games#update
#                            PUT    /teams/:team_id/team_games/:id(.:format)      team_games#update
#                            DELETE /teams/:team_id/team_games/:id(.:format)      team_games#destroy
#                      teams GET    /teams(.:format)                              teams#index
#                            POST   /teams(.:format)                              teams#create
#                  edit_team GET    /teams/:id/edit(.:format)                     teams#edit
#                       team GET    /teams/:id(.:format)                          teams#show
#                            PATCH  /teams/:id(.:format)                          teams#update
#                            PUT    /teams/:id(.:format)                          teams#update
#                            DELETE /teams/:id(.:format)                          teams#destroy
#                 team_games POST   /team_games(.:format)                         team_games#create
#           individual_games GET    /individual_games(.:format)                   individual_games#index
#                            POST   /individual_games(.:format)                   individual_games#create
#        new_individual_game GET    /individual_games/new(.:format)               individual_games#new
#       edit_individual_game GET    /individual_games/:id/edit(.:format)          individual_games#edit
#            individual_game GET    /individual_games/:id(.:format)               individual_games#show
#                            PATCH  /individual_games/:id(.:format)               individual_games#update
#                            PUT    /individual_games/:id(.:format)               individual_games#update
#                            DELETE /individual_games/:id(.:format)               individual_games#destroy
