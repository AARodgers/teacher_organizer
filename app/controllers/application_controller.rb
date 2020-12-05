class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  #user is logged in if current_user is true
  helpers do
    def logged_in?
      !!current_user
    end
  end

  # current user is @current_user if @current is true, otherwise if user by current session email if that email already exist
  def current_user
    @current_user ||= User.find_by(email: session[:email]) if session[:email]
  end

  #authenticates user password if the session email is equal to user's email
  def login(email, password)
    user = User.find_by(email: email)
    if user&.authenticate(password)
      session[:email] = user.email
    else
      redirect '/login'
    end
  end

  def logout!
    session.clear
    redirect to '/teachersapp'
  end
end
