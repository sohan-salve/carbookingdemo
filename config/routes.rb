Rails.application.routes.draw do
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



  get "/details/:id", to: "vehicles#confirm_order"
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
