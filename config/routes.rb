Rails.application.routes.draw do
  

  resources :tag_blogs
  resources :tags
  resources :users do
    collection { post :import }
  end
  resources :blog_posts

  resources :blog_posts do
    resources :comments
  end

  root 'pages#index'
  get '/index', to: 'pages#index'
  get '/post', to: 'pages#post'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/blog/:id', to: 'pages#show', as: 'detail_blog'
  get '/posts/search', to: 'posts#search', as: 'search'
  get '/posts/search_tag', to: 'posts#search_tag', as: 'search_tag'
  get '/posts/index', to: 'posts#index', as: 'posts_index'
  get '/posts/index_tag', to: 'posts#index_tag', as: 'index_tag'
  get '/statistic_blog', to: 'blog_posts#statistic'
  get '/new_user_admin', to: 'users#new_user_admin'
  get '/export_user', to: 'users#export_user'
end
