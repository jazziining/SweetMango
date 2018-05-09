Rails.application.routes.draw do
  # resources :users
  get "/pages/*page" => "pages#show"
  get "contact_me" => "messages#new", as: "new_message"
  post "contact_me" => "messages#create", as: "create_message"
  root "pages#show", page: "home"

  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
