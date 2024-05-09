Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboards/mytasks', as: "mytasks"
  get 'dashboards/myjobs', as: "myjobs"
  get 'dashboards/myprofile', as: "myprofile"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/about', to: 'pages#about'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :tasks, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:create, :show, :destroy]
  end
  resources :reviews, only: [ :new, :create, :update]
end
