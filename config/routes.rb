Rails.application.routes.draw do
  get 'store/index'
  resources :line_items
  resources :carts
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'store#index', as: 'store'
  
end
