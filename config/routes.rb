Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  resources :users

  get '/login' => 'accounts#login'
  post '/login' => 'accounts#login_create'
  get '/logout' => 'accounts#logout'

  root 'posts#index'
end
