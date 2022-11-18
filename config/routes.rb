Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  # get 'movies/index', to: 'movies#index'
  resources :bookmarks, only: [:destroy]

end
