# this is the controller
require "sinatra"

# this represents one page on your
#   website
# this is a landing page
get "/" do
  # this must be an instance variable
  #   for it to be available in your templates
  #   meaning that variables must start with an @
  @array = ["Orlando", "Vinny", "Angelique"]

  # this will load the home.erb template
  #   from the views folder
  erb :home
end

# this is be the profile page
get "/profile" do
  # this will load the profile.erb template
  #   from the views folder
  erb :profile
end

# this is the contact-me page
get "/contact-me" do
  # this will load the contact.erb template
  #   from the views folder
  erb :contact
end
