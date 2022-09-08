Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'carts/show'
  devise_for :users
  root to: "pages#home"

  resources :books, only: [:index, :show] do
    resources :physical_books, only: [:index]
  end

  resources :bookstores, only: [:index] do
    resources :physical_books, only: [:index]
  end

  resources :physical_books, only: [:index]
end
