Rails.application.routes.draw do
  devise_for :users
  root to: "campsites#index"
  get '/campsites/category', to: "campsites#category"
  get '/campsites/:id/:name' , to: "campsites#show", as: 'campsites_show'
  resources :campsites do
    resources :comments, only: [:new, :create]
    resources :reviews, only: [:index, :create]
    collection do
      get 'search'
    end
  end
  # post 'campsite/:campsite_id/comment',to: 'comments#create', as: 'campsite_comment'
  post 'like/:id' ,to: 'likes#create', as: 'create_like'
  delete 'like/:id', to: 'likes#destroy', as: 'destroy_like'
end
