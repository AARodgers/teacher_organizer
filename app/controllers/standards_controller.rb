class StandardsController < ApplicationController

    get '/homepage' do
        @user = current_user
        @standards = @user.standards
        erb :'users/homepage'
    end

    get '/standard/new' do
        if logged_in?
            erb :'standards/create_standard'
        else
            redirect to '/homepage'
        end
    end







end
