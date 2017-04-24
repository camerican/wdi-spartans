# Handy Reference
- __Route__: the pathway into your controller determined by the http verb
	and the url/path to reach it

	- when you say `get "/users" => "users#index"` you are stating that
		when you navigate to the path "/users" the code that is written
		in the `users_controller.rb` and `index` method will be executed
	- there are two general ways to create routes in rails
		1. `resources :posts` (which creates the following routes automagically)
			- `get "/posts" => "posts#index"`
			- `get "/posts/new" => "posts#new"`
			- `get "/posts/:id" => "posts#show"`
			- `get "/posts/:id/edit" => "posts#edit"`
			- `put "/posts/:id" => "posts#update"`
			- `post "/posts" => "posts#create"`
			- `delete "/posts/:id" => "posts#destroy"`
		2. `get "/posts" => "users#index"` (which creates one route)

- __Model__: the ruby class representing interaction with the database
	usually named after the database table it interacts with. (the `User`
	model interacts with the `users` table)

- __Controller__: where the code that binds your url route and data models
	together lives. Each controller corresponds to a theme that it is named
	after.
	1. `comments_controller.rb` does stuff regarding comments
	2. `sessions_controller.rb` does stuff regarding sessions (login/logout)

- __Action__: a method defined in a controller that is executed when you
	navigate to the route with the appropriate http verb and path combination

	- For example, if you write `put "/posts/:id" => "posts#update"` `update` is the name of the action. This action needs to be defined in the `posts_controller` so you can tell rails what happens when you hit that route as a put (probably from a form).
	- If there are no redirects within the action then it will try to use the view file named the same as the action name. For example, the `index` action in `users_controller` will attempt to execute the `index.html.erb` view within the `users` subfolder that is within `views`

- __View__: a file that generates the html that will be sent to the browser
	- html views must have filename extensions that end in `.html.erb`

# Rails Project Guide

- Create a new rails project by running the `rails new [project name]` command
- `cd` into the project folder
- create a route in the `routes.rb` file
- navigate to that route on the browser
- once you verified that the route is available you can use the errors
	to navigate you towards the next steps. At every step check the browser
	to monitor your progress as you add more layers.
	1. create the controller that you pointed to in the route
		- `rails g controller [controller name] [action] [action]`
	2. create the action that you pointed to in the route
		- this is created for your if you provided the action names in the
			generator noted above
		- otherwise, you can define the method in the controller
	3. create the view that matches the action
		- this is created for your if you provided the action names in the
			generator noted above
		- otherwise, you can create the file within the `views/[controller]` folder and name it `[action].html.erb`
- once you become comfortable with the above steps create a model using the `rails g model [model name]` command
- look into the migration file and add the code that will generate/modify your tables
- run your migrations with the command `rake db:migrate`
- add your associations in the model (e.g. `has_many :posts`)
- now you are ready to integrate your models into your codebase.

#### Model Code Examples Include:
- `User.find(params[:id])`
- `Post.all`
- `Comment.find(params[:id]).update(params[:comment])`
