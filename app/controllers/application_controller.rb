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
      flash "Username and password did not match."
      redirect '/login'
    end
  end

  # Logs the user out and redirects them back to website's homepage.
  def logout!
    session.clear
    redirect to '/teachersapp'
  end

  # Save a message to show the user.
  # e.g. `flash "You have logged in!"`
  def flash(msg)
    session[:flash] = msg
  end

  # Check if there are any messages waiting.
  def flash_waiting?
    session[:flash]
  end

  # Retrieve the message for the user and clear it.
  def read_flash
    msg = session[:flash]
    session[:flash] = nil
    msg
  end
end
