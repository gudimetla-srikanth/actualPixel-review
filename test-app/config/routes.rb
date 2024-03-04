Rails.application.routes.draw do
  root "app#new"
  resources :app
end
