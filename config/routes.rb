Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'users/new'
  get 'track/track_view'
  root 'static_pages#home'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/track', to: 'track#track_view'

  get '/track', to: 'track#track_view'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  post 'track/track_view', to:'track#track_view'

  resources :users do
    member do
      get :following, :followers, :tracks
    end
  end
  resources :account_activations, only: [:edit]
  resources :relationships, only: [:create, :destroy]
  resources :track_relationships, only: [:create, :destroy]
  resources :track
end
