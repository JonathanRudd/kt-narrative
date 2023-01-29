Rails.application.routes.draw do
  devise_for :users

  resources :warzones

  resources :killteams do
    resources :batreps, only: [:new, :create]
  end

  # resources :batreps, only: [:show, :edit, :update, :destroy]


  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
