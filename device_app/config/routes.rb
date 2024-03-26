Rails.application.routes.draw do
  devise_for :users
  root 'samples#index'
end
