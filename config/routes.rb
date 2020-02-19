Rails.application.routes.draw do

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/add',  to: 'static_pages#add'
  get '/game', to: 'static_pages#game'
end
