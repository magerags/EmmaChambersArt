Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :collections, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :artworks, only: [:index, :show, :create, :new, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
