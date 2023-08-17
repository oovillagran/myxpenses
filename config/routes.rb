Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#user_groups_root'

  resources :users do
    resources :groups, only: [:index, :new, :create, :destroy] do
    resources :spendings, only: [:index, :new, :create, :destroy]
    end
  end
end
