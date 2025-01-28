Rails.application.routes.draw do

  get 'cars/:car_id/likes' => 'likes#create'
  get 'cars/:car_id/likes/:id' => 'likes#destroy'
  post 'cars/basic' => 'cars#basic'
  post 'cars/middle' => 'cars#middle'
  post 'cars/premium' => 'cars#premium'
  get 'cars/hajimari' => 'cars#hajimari'

  devise_for :users
  resources :users, only: [:show]
  resources :carpicks
  get 'carpicks/note' => 'carpicks#note'

  resources :cars do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'cars#index' #localhost:3000の時indexページに飛ぶ！
end