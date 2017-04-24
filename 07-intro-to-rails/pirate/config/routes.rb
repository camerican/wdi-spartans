Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # when going to the landing page
  #   it will route to the HomeController, index action
  get "/" => "home#index"

  # this command...
  resources :users

  # will generate the following routes for you
  # get "/users" => "users#index"
  # post "/users" => "users#create"
  # get "/users/new" => "users#new"
  # get "/users/:id/edit" => "users#edit"
  # get "/users/:id" => "users#show"
  # put "/users/:id" => "users#update"
  # delete "/users/:id" => "users#destroy"
end
