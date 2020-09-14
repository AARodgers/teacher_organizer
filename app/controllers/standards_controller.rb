class StandardsController < ApplicationController

    get '/homepage' do
        @user = current_user
        @standards = @user.standards
        erb :'users/homepage'
    end
end
