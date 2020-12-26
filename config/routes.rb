Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :stone_images, only: [:new, :create, :index, :show, :destroy] do
  	resource :favorites, only: [:create, :destroy]
  	resources :stone_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  root 'stone_images#index'
end
