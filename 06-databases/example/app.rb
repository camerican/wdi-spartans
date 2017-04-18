require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:example.sqlite3"

get "/" do
  "Landing page"
end

get "/users" do
  @users = User.all

  erb :users
end

get "/users/:id" do
  @user = User.find(params[:id])

  erb :user
end
