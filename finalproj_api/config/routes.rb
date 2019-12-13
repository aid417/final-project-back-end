Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'
  resources :merges
  resources :users do
    resources :articles, only: [:create, :show, :delete]
  end
  resources :articles
  resources :categories, only: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
