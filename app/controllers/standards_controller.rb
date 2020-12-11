# frozen_string_literal: true

# Is the Standards controller with methods to add, edit and remove standards from User's homepage.

class StandardsController < ApplicationController

  # Directs current user to main homepage.
  get '/users/homepage' do
    @user = current_user
    @standards = @user.standards
    erb :'users/homepage'
  end

  # Takes user to create a new standard form.
  get '/standards/new' do
    unless logged_in?
      redirect to '/homepage'
    else
      erb :'standards/create_standard'
    end
  end

  # Saves the input from the user for the new standards created via a form.
  post '/users/homepage' do
    unless logged_in?
      redirect_to '/teachersapp'
      return
    end

    if logged_in?
      if params[:standard_title] == '' && params[:standard_description] == ''
        redirect to '/standards/new'
      else
        @standard = current_user.standards.build(
          title: params[:standard_title],
          description: params[:standard_description],
          users: [current_user]
        )
        if @standard.save
          redirect to '/users/homepage'
        else
          redirect to '/standards/new'
        end
      end
    end
  end

  #
  get '/standards/:id' do
    unless logged_in?
      redirect to '/users/homepage'
      return
    end
    @standard = Standard.find_by_id(params[:id])
    erb :'standards/show_standard'
  end

  get '/standards/:id/edit' do
    unless logged_in?
      redirect '/homepage'
      return
    end

    @standard = Standard.find_by_id(params[:id])
    erb :'standards/edit_standard'
  end

  patch '/standards/:id' do
    unless logged_in?
      redirect '/homepage'
      return
    end

    @standard = Standard.find_by_id(params[:id])
    @standard.title = params[:title]
    @standard.description = params[:description]
    @standard.save!
    redirect "/standards/#{@standard.id}"
  end

  post '/standards/:id/resource' do
    unless logged_in?
      redirect '/users/homepage'
      return
    end

    @standard = Standard.find_by_id(params[:id])
    @resource = Resource.new
    @resource.title = params[:title]
    @resource.link = params[:link]
    @resource.standards = [@standard]
    @resource.save!

    redirect "/standards/#{@standard.id}"
  end

  delete '/standards/:id' do
    unless logged_in?
      redirect to '/homepage'
      return
    end

    @standard = Standard.find_by_id(params[:id])
    @standard.delete
    redirect '/users/homepage'
  end
end
