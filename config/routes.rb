Rails.application.routes.draw do
  root 'movies#index'
  get '/new', to: 'movies#new'
  get '/edit/:id', to: 'movies#edit'
  
  resources :movies do
    resources :reviews
  end
end
