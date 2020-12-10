Rails.application.routes.draw do
  devise_for :users
  root to: "campsites#index" 
  resources :campsites, only: [:index]
end
