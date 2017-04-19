require "sinatra"
require "sinatra/activerecord"
require "./models"

# this is needed for sinatra flash
require "bundler/setup"
require "sinatra/flash"

set :database, "sqlite3:pirate.sqlite3"
set :sessions, true

get "/" do
  erb :landing
end

get "/pirates" do
  @pirates = Pirate.all

  erb :pirates
end

get "/pirate_create" do
  Pirate.create(name: "Orlando", bday: "12/01/1983")
end

get "/letter_create" do
  Letter.create(
    title: "Love Letter",
    content: "RRrrrrrrrrr",
    pirate_id: Pirate.first.id
  )
end

get "/ship_create" do
  Ship.create(
    name: "SS Spartans"
  )
end

get "/pirate_ship_create" do
  PirateShip.create(
    pirate_id: Pirate.first.id,
    ship_id: Ship.first.id
  )
end

get "/sign-in" do
  erb :sign_in_form
end

post "/sign-in" do
  # puts params[:username]
  # puts params[:password]
  @pirate = Pirate.where(name: params[:name]).first

  if @pirate.password == params[:password]
    session[:pirate_id] = @pirate.id

    flash[:notice] = "You have been signed in"

    redirect "/"
  else
    flash[:notice] = "Your name and password do not match"

    redirect "/sign-in"
  end
end

get '/sign-out' do
  session[:pirate_id] = nil
  redirect "/"
end

get "/profile" do
  @pirate = Pirate.find(session[:pirate_id])

  erb :profile
end

# shortcut method for loading users
# you can use this in every sintra route
def current_user
  if session[:pirate_id]
    Pirate.find(session[:pirate_id])
  end
end

# get "/account" do
#   @pirate = Pirate.find(1)
#
#   erb :account
# end
