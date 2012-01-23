class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :signed_in?


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue
    @current_user = nil
    session[:user_id] = nil
  end

  def signed_in?
    !!current_user
  end

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.id
  end
end
