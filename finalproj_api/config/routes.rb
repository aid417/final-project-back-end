Rails.application.routes.draw do
  resources :merges
  resources :users do
    resources :articles, only: [:create, :show, :delete]
  end
  resources :articles
  resources :categories, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
