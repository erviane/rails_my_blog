Rails.application.routes.draw do
  

resources :users
resources :blog_posts

  root 'pages#index'
  get '/post', to: 'pages#post'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'sessions/new'
  get '/blog/:id', to: 'pages#show', as: 'detail_blog'
end
