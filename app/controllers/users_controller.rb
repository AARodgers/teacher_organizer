# frozen_string_literal: true

class UsersController < ApplicationController
  get '/teachersapp' do
    erb :homepage
  end

  get '/signup' do
    erb :'users/new'
  end

  # if user doesn't type any input on signup page redirect to signup page
  # otherwise, save user input to database, create a session with the current user's id
  # redirect to homepage
  post '/signup' do
    if params[:name] == '' || params[:email] == '' || params[:password] == ''
      redirect to '/signup'
    else
      @user = User.new(name: params[:name], email: params[:email], password: params[:password])
      @user.save
      session[:user_id] = @user.id
      redirect to '/homepage'
    end
  end

  # saves new user's information and directs them to login page
  # if user's info wasn't successfully saved, send them to signup page
  post '/users' do
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      redirect '/login'
    else
      erb :'users/new'
    end
  end
end
