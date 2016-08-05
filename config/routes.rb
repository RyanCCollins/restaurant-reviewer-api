Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do # Scope the entire api to /api/v1
      resources :users, only: [:show, :create, :update, :destroy]
      resources :sessions, only: [:create, :destroy]
      resources :restaurants, only: [:show, :index] do
        resources :reviews, only: [:create, :destroy, :update, :index, :show]
      end
    end
  end
end
