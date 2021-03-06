Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#new"




  get "/signup", to: "users#new", as: :signup
  post "/users", to: "users#create"
  get "/users/:id", to: "teams#index", as: :user

  get "/login", to: "sessions#new", as: :login
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: :logout

	resources :profiles
	resources :teams

end
