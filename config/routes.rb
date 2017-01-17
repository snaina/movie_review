Rails.application.routes.draw do
  devise_for :users, controllers: { confirmation: 'confirmations'}
  post '/rate' => 'rater#create', :as => 'rate'
  #devise_for :users, controllers: { confirmation: 'confirmations'}
  # devise_for :installs
  resources :movies
  #resources :users
  resources :users do
  	resources :movies  do
      resources :comments
    end
  
end
  root :to =>'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "dashboard", to: "home#dashboard"
  authenticated :user do
    root 'movies#index', as: :authenticated_root
  end
end
