Rails.application.routes.draw do
  root "users#sample1"
  get '/turn',to:"users#turn"
end
