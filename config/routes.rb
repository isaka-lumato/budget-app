Rails.application.routes.draw do

  get 'home/index'
  devise_for :users
  resources :users

  resources :categories do
    resources :transactions
  end
    root 'categories#index', as: :authenticated_root
end
