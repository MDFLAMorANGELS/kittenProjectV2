Rails.application.routes.draw do
  resources :join_table_items_carts, only: [:create, :update, :destroy]
  resources :carts, except: [:index, :new, :edit]
  resources :items
  root to: "items#index"
  devise_for :users
end
