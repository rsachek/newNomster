Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  root 'places#index'
  resources :places do
    resources :comments, only: :create
  end

  resources :places do
    resources :photos, only: :create
  end

  resources :users, only: :show

end
