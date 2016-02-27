Rails.application.routes.draw do

  devise_for :users
  resources :movies do
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  root 'movies#index'
end
