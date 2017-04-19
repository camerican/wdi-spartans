require "sinatra"

get "/" do
  erb :landing
end

get "/pirates" do
  erb :pirates
end
