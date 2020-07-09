Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :products 
  resources :shopping_carts 
  resources :categories
  get "/", to: 'homepage#home', as: "root"
  get 'signup', to: 'users#new', as: 'signup'
  post 'signup', to: 'users#create', as: 'create'
  get 'login', to: 'sessions#new', as: 'login'
  post 'sessions', to: 'sessions#create', as: 'sessions'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
end
