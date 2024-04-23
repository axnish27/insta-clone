Rails.application.routes.draw do
  root to: "users#index"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users ,only: [:show ,:update]
  resources :posts
  resources :follows
  resources :likes
  resources :comments
  resources :requests

end
