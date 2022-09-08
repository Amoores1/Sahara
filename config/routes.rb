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

  resources :physical_books, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :basket_items, only: [:create]
  end

  get 'carts/:id' => "carts#show", as: "cart"
  delete "cart/:id" => "carts#destroy"

  post 'basket_items' => "basket_items#create"

  get 'basket_items/:id' => "basket_items#show", as: "basket_item"
  delete 'basket_items/:id' => "basket_items#destroy"

  resources :orders

end
