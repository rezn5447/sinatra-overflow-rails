Rails.application.routes.draw do
  root 'users#index'
  resources :sessions, only: [:new,:create,:destroy]

  resources :users, except: [:update, :edit, :destroy] do
    resources :articles
  end

  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
