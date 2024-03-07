Rails.application.routes.draw do
  root 'pages#index'
  resources :articles
  resources :users
  get 'login',to:'sessions#login'
  get 'signup',to:'sessions#signup'
  post 'login',to:'sessions#login_user'
  post 'newuser',to:'sessions#create'
  delete "logout",to:'sessions#logout'
end
