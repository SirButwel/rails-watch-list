Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lists#index'
  resources :lists, only: %i[index new show create destroy] do
    resources :bookmarks, only: %i[new create destroy delete]
  end
  resources :bookmarks, only: %i[new create]
  get '/search', to: 'lists#search'
end
