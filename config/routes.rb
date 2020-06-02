Rails.application.routes.draw do
  get 'pets/index'
  get 'pets/show'
  devise_for :users
  root to: 'pages#home'
  resources :pets do
    resources :requests, only: [:new, :create]
  end
  resources :requests, only: [:index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
