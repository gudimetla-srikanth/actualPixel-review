Rails.application.routes.draw do
 root 'chatrooms#index'
 get 'login',to:"sessions#login"
 post 'create',to:'chatrooms#create'
 post 'login',to:'sessions#create'
 delete 'logout',to:'sessions#destroy'
 mount ActionCable.server,at:'/cable'
end
