Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'splash#index'

  resources :books do
    resources :reviews, only: [:new, :create]
  end
  resources :authors, only: [:show, :edit]
  resources :users

# resources :books
#   get '/books', to: 'books#index'
end
