Rails.application.routes.draw do
  resources :users
  resources :secrets
  resources :sessions

  
  get '/', to: 'secrets#show'
  get '/login', to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
