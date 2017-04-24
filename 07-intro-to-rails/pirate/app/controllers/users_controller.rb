class UsersController < ApplicationController
  # corresponds to get "/users" => "users#index"
  def index
    # loads all users in the database
    @users = User.all

    # you can have more than one instance variable
    @colors = ["red", "green"]
  end

  # corresponds to get "/users/:id" => "users#show"
  def show
    # loads one user in the database
    @user = User.find(params[:id])
  end
end
