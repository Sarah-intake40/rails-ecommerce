Rails.application.routes.draw do
  devise_for :admins
  devise_for :users , controllers: { registrations: 'registrations'}
  resources :products
  resources :categories
  resources :brands
  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
