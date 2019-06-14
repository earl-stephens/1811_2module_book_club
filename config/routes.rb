Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'splash#index'

  # resources :books do
  #   resources :reviews, only: [:new, :create, :destroy]
  # end
  get '/books', to: 'books#index', as: 'books'
  post '/books', to: 'books#create'
  get '/books/new', to: 'books#new', as: 'new_book'
  get '/books/:id/edit', to: 'books#edit', as: 'edit_book'
  get '/books/:id', to: 'books#show', as: 'book'
  patch '/books/:id', to: 'books#update'
  put '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'books#destroy'

  post '/books/:book_id/reviews', to: 'reviews#create', as: 'book_reviews'
  get '/books/:book_id/reviews/new', to: 'reviews#new', as: 'new_book_review'
  delete 'books/:book_id/reviews/:id', to: 'reviews#destroy', as: 'book_review'


  # resources :authors, only: [:show, :edit, :destroy]
  get '/authors/:id', to: 'authors#show', as: 'author'
  delete '/authors/:id', to: 'authors#destroy'
  get '/authors/:id', to: 'authors#edit', as: 'edit_author'

  # resources :users
  get '/users', to: 'users#index', as: 'users'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user'
  put '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
end
