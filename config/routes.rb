Rails.application.routes.draw do
  devise_for :users
  root to: "campsites#index"
  get '/campsites/category', to: "campsites#category"
  resources :campsites do
    collection do
      get 'search'
    end
  end

  post 'like/:id' ,to: 'likes#create', as: 'create_like'
  delete 'like/:id', to: 'likes#destroy', as: 'destroy_like'
end
