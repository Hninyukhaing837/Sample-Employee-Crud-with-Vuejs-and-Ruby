Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'home#index'
    namespace :api, {format: 'json'} do
      resources :employees, only: [:index, :show, :create, :update, :destroy]
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
