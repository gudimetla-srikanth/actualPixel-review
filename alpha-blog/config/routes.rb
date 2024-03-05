Rails.application.routes.draw do
  root 'pages#index'
  resources :articles
  resources :users
  get 'login',to:'sessions#login'
end
