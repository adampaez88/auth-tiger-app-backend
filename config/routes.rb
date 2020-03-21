Rails.application.routes.draw do
  resources :tigers, only: [:create, :index]
  resources :users, only: [:create, :index]
  post 'login', to: 'authentication#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
