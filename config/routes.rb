Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books, only: [:index, :show, :create]
      resources :users, only: [:create]

      post "/users/login", to: "users#login"
      get "/users/auto-login", to: "users#auto_login"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
