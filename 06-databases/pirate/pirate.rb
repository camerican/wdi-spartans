require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:pirate.sqlite3"

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

# get "/account" do
#   @pirate = Pirate.find(1)
#
#   erb :account
# end
