Rails.application.routes.draw do

  resources :items
  devise_for :users

  get 'requests/:item_id' => "requests#index"
  get 'requests/:item_id/new' => "requests#new"
  post 'requests/:item_id/new' => 'request#create'
  root 'home#index'
  get 'home/list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
