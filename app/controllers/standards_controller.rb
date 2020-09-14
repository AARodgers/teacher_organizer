class StandardsController < ApplicationController

    get '/homepage' do
        @user = current_user
        erb :'users/homepage'
    end
end
