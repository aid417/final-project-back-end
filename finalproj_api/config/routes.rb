Rails.application.routes.draw do
  resources :merges
  resources :users
  resources :articles
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end