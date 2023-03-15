Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"

  get 'blush', to: 'products#blush'
  get 'bronzer', to: 'products#bronzer'
  get 'eyebrow', to: 'products#eyebrow'
  get 'eyeliner', to: 'products#eyeliner'
  get 'eyeshadow', to: 'products#eyeshadow'
  get 'foundation', to: 'products#foundation'
  get 'lip_liner', to: 'products#lip_liner'
  get 'lipstick', to: 'products#lipstick'
  get 'mascara', to: 'products#mascara'
  get 'nail_polish', to: 'products#nail_polish'
end
