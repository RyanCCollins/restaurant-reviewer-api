Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    scope module: :v1 do # Scope the entire api to /api/v1
      resources :users, only: [:show, :create, :update, :destroy]
    end
  end
end
