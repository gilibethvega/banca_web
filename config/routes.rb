Rails.application.routes.draw do
  resources :product_types
  resources :visa_types
  resources :finantial_products
  resources :finantial_infos
  resources :institution_types
  resources :posts
  resources :worker_types
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
  get 'home/admin'
end
