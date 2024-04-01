Rails.application.routes.draw do
  root "users#sample"
  get '/turn',to:"users#turn"
end
