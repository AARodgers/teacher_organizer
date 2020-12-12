# frozen_string_literal: true

# Is the Users controller with methods to sign user up and save their sign-in information.

class UsersController < ApplicationController
  get '/teachersapp' do
    erb :homepage
  end

  get '/signup' do
    erb :'users/new'
  end

  # Creates a new user.
  post '/users' do
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      flash "You have sucessfully created an account!"
      redirect '/login'
    else
      flash "You must provide a name, email, and password."
      erb :'users/new'
    end
  end
end
