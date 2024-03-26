Rails.application.routes.draw do
  devise_for :users
  # root 'todos#new'
  # mount ActionCable.server,at:'/cable'
  root 'articles#index'
  resources :articles
  get 'signin',to:'users#signin'
  post 'login',to:'users#login'
end
