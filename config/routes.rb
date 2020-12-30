Rails.application.routes.draw do
  devise_for :users
  root to: "campsites#index"
  get '/campsites/category', to: "campsites#category"
  resources :campsites do
    collection do
      get 'search'
    end
  end
end
