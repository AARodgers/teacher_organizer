class StandardsController < ApplicationController

    get '/homepage' do
        erb :'users/homepage'
    end
end
