Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream
  root to: 'campsites#index'
  resources :campsites, only: [:index]
=======
  resources :campsites, only: [:index]
  root to: "campsites#index" 
>>>>>>> Stashed changes
end
