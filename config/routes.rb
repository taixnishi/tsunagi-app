Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  root to: 'top#index'
  get 'search', to: :search, controller: 'top'
  resources :users,only: [:show] do 
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :shops do 
    resources :cloths, only: [:create,:destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
