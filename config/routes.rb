Rails.application.routes.draw do
  root 'movies#index'
  post "/search", to: "movies#searcher"
  get '/new', to: 'movies#new'
  get '/edit/:id', to: 'movies#edit'
  
  resources :movies do
    resources :reviews
  end
  resources :tags
end
