Rails.application.routes.draw do
  devise_for :admins
  devise_for :users , controllers: { registrations: 'registrations'}
  resources :products
  resources :categories
  resources :brands
  resource :cart, only: [:show] do
    put 'add/:product_id', to: 'carts#add', as: :add_to
    put 'remove/:product_id', to: 'carts#remove', as: :remove_from
    put 'remove_one/:product_id', to: 'carts#removeone', as: :remove_one 
  end
  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
