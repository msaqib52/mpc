Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :contacts, only: [:new, :create]
  resources :home do
    collection do
      match 'search' => 'home#search', via: [:get, :post], as: :search
    end
  end
end
