# frozen_string_literal: true

# Is the Sessions controller with login and logout methods.

class SessionsController < ApplicationController
  # Sends message to user that they have successully signed in.
  get '/login' do
    @successful_signup = session[:successful_signup]
    session[:successful_signup] = nil
    erb :'sessions/login'
  end

  # Uses user's input to log them in and save their info.
  post '/sessions' do
    login(params[:email], params[:password])
    @successful_login = session[:successful_login]
    redirect '/users/homepage'
  end

  # Logs the user out and redirects them to main homepage.
  post '/logout' do
    logout!
    redirect '/teachersapp'
  end
end
