Rails.application.routes.draw do
  resources :users #all routes
  resources :scores, only:[:index, :create, :show]

  get '/me', to: "users#show"
  post '/signup', to: "users#create"
  post '/login', to: "sessions#login"
  delete '/logout', to: "sessions#logout"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
