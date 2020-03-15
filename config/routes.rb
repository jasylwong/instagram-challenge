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

  get "post/like/:post_id", to: "likes#save_like"
  
  get 'users/new'
  post '/signup',  to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users, :posts
end
