Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  resources :orders do
    get :my_orders, on: :collection
  end
  resources :vehicles do
    get :my_vehicles, on: :collection
  end
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  devise_for :users, controllers: {
        registrations: 'user/registrations'
      }


       resources :charges, only: [:new, :create]
      #  devise_for :users
       resources :posts
      #  root to: 'posts#index'



  get "/details/:id", to: "vehicles#confirm_order"
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
