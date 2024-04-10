Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  root "welcome#index"
  get 'my_portfolio',to:'users#my_portfolio'
  get 'search_stock',to:'stocks#search'
  get 'my_friends',to: 'friendships#my_friends'
  get 'search_user',to: 'friendships#search_user'
  post 'add_friend',to:'friendships#add_new_friend'
  delete 'remove_friend',to:'friendships#remove_existing_friend'
  get 'view_profile',to:'friendships#viewprofile'
end
