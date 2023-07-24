Rails.application.routes.draw do
  resources :books
  delete 'books/:id' => 'books#destroy', as: 'destroy'
  post 'books' => 'books#create'
  get 'books', to: 'books#index'
  get 'books/:id' =>'books#show', as: 'show'
  get 'books/:id/edit'=>'books#edit', as: 'edit'
  get 'homes/top'
  get '/' => 'homes#top',as: 'root'
  patch 'books/:id' => 'books#update', as: 'update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
