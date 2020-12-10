Rails.application.routes.draw do
  root to: 'campsites#index' 
  devise_for :users
 

end
