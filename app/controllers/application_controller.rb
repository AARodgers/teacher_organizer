# frozen_string_literal: true

# Is Application Controller with helper methods for logging in and out.

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  helpers do
    def logged_in?
      !!current_user
    end
  end

  # If we don't know who the user is, find them by their session email.
  def current_user
    @current_user ||= User.find_by(email: session[:email]) if session[:email]
  end

  # Logs the user in if their email and passsword match.
  def login(email, password)
    user = User.find_by(email: email)
    if user&.authenticate(password)
      session[:email] = user.email
    else
      redirect '/login'
    end
  end

  # Logs the user out and redirects them back to website's homepage.
  def logout!
    session.clear
    redirect to '/teachersapp'
  end
end
