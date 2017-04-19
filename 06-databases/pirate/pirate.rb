require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:pirate.sqlite3"

get "/" do
  erb :landing
end

get "/pirates" do
  erb :pirates
end
