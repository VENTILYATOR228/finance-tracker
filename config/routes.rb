Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  resources :friends, only: [:create, :destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'friends', to: 'users#friend_list'
  get 'search_friend', to: 'users#search'
  get 'search_stock', to: 'stocks#search'
end
