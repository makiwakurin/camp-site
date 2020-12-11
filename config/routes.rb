Rails.application.routes.draw do
  devise_for :users
  root to: "campsites#index" 
end
