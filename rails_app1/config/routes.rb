Rails.application.routes.draw do
  root "todos#newpage"
  get "oldpage",to:"todos#oldpage"
end
