Rails.application.routes.draw do

  resources :carts, except: [:index, :new, :edit]
  resources :join_table_items_carts, only: [:create, :update, :destroy]
  resources :items
  root to: "items#index"
  devise_for :users

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end
end

