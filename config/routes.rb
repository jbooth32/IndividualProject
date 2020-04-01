Rails.application.routes.draw do


  resources :games
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/add',  to: 'games#new'
  get '/randgame', to: 'static_pages#randgame'
end
