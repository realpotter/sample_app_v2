Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  #get 'users/new'

  root to: 'static_pages#home'
  get '/', :to =>'static_pages#home'
  
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  get '/signup',  to: 'users#new'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
end
