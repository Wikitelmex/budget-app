Rails.application.routes.draw do
  get 'homeauth/index'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  authenticated :user do
    root 'groups#index', as: :authenticated_root
  end

  unauthenticated do
    root 'home#index', as: :unauthenticated_root
  end

  resources :groups
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
