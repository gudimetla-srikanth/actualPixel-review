Rails.application.routes.draw do
  root "blogs#index"
  devise_for :users
  resources :blogs
  get 'search',to:'blogs#search'
end
