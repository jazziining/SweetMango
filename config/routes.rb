Rails.application.routes.draw do
  resources :users
  get "/pages/*page" => "pages#show"
  root "pages#show", page: "home"

  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
