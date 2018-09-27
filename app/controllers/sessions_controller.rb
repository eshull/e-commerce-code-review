class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:alert] = "You have successfully signed in."
      redirect_to '/'
    else
      flash[:alert] = "An error occurred while signing in."
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:alert] = "You have successfully logged out."
    redirect_to '/sign_in'
  end

end
