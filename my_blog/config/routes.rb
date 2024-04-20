Rails.application.routes.draw do
  root "blogs#index"
  devise_for :users,controllers: {registrations: "users/registrations"}
  resources :blogs
  get 'search',to:'blogs#search'
end
