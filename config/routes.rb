Rails.application.routes.draw do
  
  resources :join_table_items_carts, only: [:create, :update, :destroy]
  resources :carts, except: [:index, :new, :edit]
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "items#index"
  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users

end
