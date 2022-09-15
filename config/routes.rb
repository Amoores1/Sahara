Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
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

  resources :orders do
    resources :payments, only: :new
  end

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

end
