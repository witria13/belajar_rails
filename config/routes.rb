Rails.application.routes.draw do
  get 'books/show'
  resources	:books
  #resources :authors
  #resources :admins
  resources :accounts, only: [:new, :create]
  resources :sessions, only: [:new, :create,:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
