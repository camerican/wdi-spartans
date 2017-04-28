class UsersController < ApplicationController
  # corresponds to get "/users" => "users#index"
  # this is an action
  def index
    # loads all users in the database
    @users = User.all

    # you can have more than one instance variable
    @colors = ["red", "green"]
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    # @user.fname = params[:user][:fname]
    # @user.lname = params[:user][:lname]

    if @user.update(user_params)
      flash[:notice] = "The user was updated"
      redirect_to user_path(@user)
    else
      flash[:alert] = "The user was not updated"
      redirect_to edit_user_path(@user)
    end
  end

  def create
    # @user = User.new(
    #   fname: params[:user][:fname],
    #   lname: params[:user][:lname]
    # )
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "The user was created"
      redirect_to user_path(@user)
    else
      flash[:alert] = "The user was not created"
      redirect_to new_user_path
    end
  end

  # corresponds to get "/users/:id" => "users#show"
  def show
    # loads one user in the database
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      flash[:notice] = "User was deleted"
    else
      flash[:alert] = "User could not be deleted"
    end

    redirect_to users_path
  end

  private

  def user_params
    # to do: implement this...
    params.require(:user).permit(:fname,:lname)
  end

end
