class SessionsController < ApplicationController

  def create
    auth = request.env['omniauth.auth']
    unless @auth = Authorization.find_from_hash(auth)
      # Create a new user or add an auth to existing user, depending on
      # whether there is already a user signed in.
      @auth = Authorization.create_from_hash(auth, current_user)
    end
    # Log the authorizing user in.
    self.current_user = @auth.user

    redirect_to :back, :notice => "Welcome #{current_user.name}."
  rescue Exception => e
    puts e.message
    puts e.backtrace

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

  protected

  def auth
    request.env['omniauth.auth']
  end

end
