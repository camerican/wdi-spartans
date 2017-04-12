# this is the controller
require "sinatra"

# this represents one page on your
#   website
# this is a landing page
# method: get
# action: /
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
# method: get
# action: /profile
get "/profile" do
    # this will load the profile.erb template
  #   from the views folder
  erb :profile
end

# this is the contact-me page
# method: get
# action: /contact-me
get "/contact-me" do
  # this will load the contact.erb template
  #   from the views folder
  erb :contact_me
end

# method: post
# action: /contact-me-response
post "/contact-me-response" do
  # if you want to see what params have been sent
  #   from your form uncomment the following line
  # params.inspect

  # you can use these params as input into an
  #   email form (subject, from, to, etc)
  # your email code goes here

  # this redirects to the contact form
  redirect "/contact-me"
end
