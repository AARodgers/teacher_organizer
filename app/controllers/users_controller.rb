class UsersController < ApplicationController

  get '/teachersapp' do
    erb :'homepage'
  end

  get '/signup' do
      erb :'users/new'
  end

  post '/signup' do
    if params[:name] == "" || params[:email] == "" || params[:password] == ""
      redirect to '/signup'
    else
      @user = User.new(:name => params[:name], :email => params[:email], :password => params[:password])
      @user.save
      session[:user_id] = @user.id
      redirect to '/homepage'
    end
  end

  # post '/signup' do
#   if params[:username] == "" || params[:email] == "" || params[:password] == ""
#     redirect to '/signup'
#   else
#     @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
#     @user.save
#     session[:user_id] = @user.id
#     redirect to '/tweets'
#   end
# end

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
