# frozen_string_literal: true

# Is the Sessions controller with login and logout methods.

class SessionsController < ApplicationController
  get '/login' do
    erb :'sessions/login'
  end

  # use user's input to log them in and save their info
  post '/sessions' do
    login(params[:email], params[:password])
    redirect '/users/homepage'
  end

  # user logout! helper method to clear the current session, redirect to homepage
  post '/logout' do
    logout!
    redirect '/teachersapp'
  end
end
