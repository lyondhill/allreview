class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_product, :current_user, :signed_in?
  before_filter :current_product


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue
    @current_user = nil
    session[:user_id] = nil
  end

  def current_product
    @current_product ||= Product.find(params[:product_id]) if params[:product_id]
  # rescue
  #   @current_product = nil
  end

  def signed_in?
    !!current_user
  end

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.id
  end
end
