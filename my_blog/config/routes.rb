Rails.application.routes.draw do
  root "blogs#index"
  devise_for :users,controllers: {registrations: "users/registrations"}
  resources :blogs
  get 'search',to:'blogs#search'
  get 'bulkdata',to:"blogs#bulkdata"
  post 'import',to:"blogs#import"
  get 'export',to:"blogs#export_csv"
end
