
class SessionsController < ApplicationController
  def new
      @user = User.new
  end

  def create

    user = User.find_by_email( params[:email] )

    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome, #{user.name}"
      redirect_to "/users/#{user.id}"
    else
        flash[:danger] = "Email and password combination invalid"
        redirect_to "/"
    end
  end

  def destroy
    reset_session
    redirect_to "/"
    flash[:success] = "Successfully logged out."
  end
end
