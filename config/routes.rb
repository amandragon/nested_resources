NestedResources::Application.routes.draw do
  get "sites/new"
  get "sites/create"
  get "sites/show"
  devise_for :users

  resources :posts, only: [:index, :new, :create, :show]
  resources :comments, only: [:show]
  root to: 'posts#index'
end
