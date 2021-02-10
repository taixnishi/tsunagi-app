Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  resources :users
  resources :shops do 
    resources :cloths, only: [:create,:destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
