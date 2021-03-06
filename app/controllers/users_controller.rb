class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:alert] = "You have successfully signed up."
      redirect_to '/'
    else
      flash[:alert] = "An error occurred while signing up."
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)
  end

end
