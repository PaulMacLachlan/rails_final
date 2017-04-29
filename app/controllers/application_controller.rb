class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  add_flash_types :danger, :info, :warning, :success

  def current_user
      User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
