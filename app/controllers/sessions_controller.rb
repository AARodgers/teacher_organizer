# frozen_string_literal: true

# Is the Sessions controller with login and logout methods.

class SessionsController < ApplicationController
  # Sends message to user that they have successully signed in.
  get '/login' do
    erb :'sessions/login'
  end

  # Uses user's input to log them in and save their info.
  post '/sessions' do
    if params[:email] == '' && params[:password] == ''
      flash "Please provide your email and password!"
      erb :'sessions/login'
    else
      login(params[:email], params[:password])
      flash "You have successfully logged in!"
      redirect "/users/homepage"
    end
  end

  # Logs the user out and redirects them to main homepage.
  post '/logout' do
    logout!
    redirect '/teachersapp'
  end
end
