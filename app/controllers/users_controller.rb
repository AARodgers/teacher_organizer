class UsersController < ApplicationController

  get '/teachersapp' do
    erb :'users/homepage'
  end

  get '/signup' do
      erb :'users/new'
  end

  post '/signup' do
    erb :'users/new'
  end

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
