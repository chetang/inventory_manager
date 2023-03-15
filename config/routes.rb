Rails.application.routes.draw do
  resources :items
  resources :items do
    collection { post :import }
  end
  get '/upload', to: 'items#upload'

  root 'items#index'
  get '/', to: 'items#index'
end
