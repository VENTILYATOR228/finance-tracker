Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'friends', to: 'users#friend_list'
  get 'search_friend', to: 'users#search'
  get 'search_stock', to: 'stocks#search'
end
