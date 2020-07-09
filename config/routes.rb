Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :products 
  resources :shopping_carts 
  resources :categories
  get "/", to: 'homepage#home', as: "root"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
end
