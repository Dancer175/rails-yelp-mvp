Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :new, :create, :show] do
    resource :reviews, only: [:new, :create]
  end
end
