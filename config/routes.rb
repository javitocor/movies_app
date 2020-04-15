Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/destroy'
  get 'reviews/create'
  root 'movies#index'
  get '/new', to: 'movies#new'
  get '/edit/:id', to: 'movies#edit'
  
  resources :movies
  resources :reviews
end
