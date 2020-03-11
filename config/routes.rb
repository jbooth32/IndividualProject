Rails.application.routes.draw do


  resources :games
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/add',  to: 'static_pages#add'
  get '/randgame', to: 'static_pages#randgame'
end
