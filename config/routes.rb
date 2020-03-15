Rails.application.routes.draw do
  # root 'posts#index'

  get 'sessions/new'
  get 'posts/new'
  get 'posts/index'
  get 'posts/show'
  root 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get 'users/new'
  post '/signup',  to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users, :posts
end
