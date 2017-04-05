Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#index'
  get '/', to: 'blogs#index'
  get '/index', to: 'blogs#index'
  get '/about', to: 'blogs#about'
  get '/login', to: 'blogs#login'
  get '/bloglist', to: 'admins#bloglist'
  get '/new', to: 'admins#new'
  get '/comment', to: 'admins#comment'
  get '/draft', to: 'admins#draft'
end
