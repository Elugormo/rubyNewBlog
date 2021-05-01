Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root "articles#index"
  get 'search', to: 'articles#search'
  get 'filter', to: 'articles#filter'
  resources :articles do 
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
