Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

    resources :companies do
      resources :employees, shallow: true #nuevo forma para aprender con el nesting
  end
  resources :employees, except: %i[index new create]
  resources :roles, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :departments, only: [:index, :new, :create, :edit, :update, :destroy]

    # Defines the root path route ("/")
    root "pages#home"
  end
