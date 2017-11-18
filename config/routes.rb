Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'news' => 'landing#news'
  get 'content' => 'landing#content'
  get 'products' => 'landing#products'
  get 'goals' => 'landing#goals'
  root 'landing#home'
end
