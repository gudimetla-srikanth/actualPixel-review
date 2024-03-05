Rails.application.routes.draw do
  root "articles#view"
  get "new",to:"articles#new"
  post "/s",to:"articles#mine"
end
