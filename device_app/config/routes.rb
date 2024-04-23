Rails.application.routes.draw do
  root "welcome#index"
  get 'upload',to:'welcome#upload'
  post 'import',to:'welcome#import'
  get 'my',to:"welcome#mine"
end
