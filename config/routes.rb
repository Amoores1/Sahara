Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :books, only: [:index, :show]
  resources :bookstores, only: [:index] do
    resources :physical_books, only: [:index]
  end

  # resources :physical_books, only: [:index]
end
