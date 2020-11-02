Rails.application.routes.draw do
  devise_for :users
  get 'home/about' => 'homes#about', as: 'about'
  root to:'homes#top'
  resources :users, only: [:show,:index,:edit,:update]
  resources :books


end