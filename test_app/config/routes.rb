Rails.application.routes.draw do
  root 'todos#new'
  mount ActionCable.server,at:'/cable'
end
