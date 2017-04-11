Rails.application.routes.draw do
resources :blogs do
	resources :comments
end

  root 'pages#index'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/post', to: 'pages#post'
  get '/signin', to: 'pages#signin'
end
