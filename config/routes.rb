Bowling::Application.routes.draw do
  get "games/index"
  root 'games#index'

  resources :games
end
