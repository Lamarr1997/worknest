Rails.application.routes.draw do
  get 'tasks/new'
  get 'tasks/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/about', to: 'pages#about'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
<<<<<<< HEAD
  resources :tasks, only: [:new, :create, :show]
=======
  resources :pages, only: [ :new, :create, :show]
>>>>>>> be4db4a8a51c16f62e7cb085301610e83fdcc784
end
