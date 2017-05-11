Rails.application.routes.draw do


  get 'gallerycategories/new'

  get 'gallerycategories/create'

  get 'gallerycategories/update'

  get 'gallerycategories/edit'

  get 'gallerycategories/destroy'

  get 'gallerycategories/index'

  get 'gallerycategories/show'

  get 'images/new'

  get 'images/create'

  get 'images/update'

  get 'images/edit'

  get 'images/destroy'

  get 'images/index'

  get 'images/show'

  devise_for :users
  get 'categories/new'

  get 'categories/create'

  get 'categories/update'

  get 'categories/edit'

  get 'categories/destroy'

  get 'categories/index'

  get 'categories/show'

  get 'samples/new'

  get 'samples/create'

  get 'samples/update'

  get 'samples/edit'

  get 'samples/destroy'

  get 'samples/index'

  get 'samples/show'

  get 'about/index'

  get 'about' => 'about#index'

  root 'samples#index'

  resources :samples
  resources :categories
  resources :images
  resources :gallerycategories




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
