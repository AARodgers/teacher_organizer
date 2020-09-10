class SessionsController < ApplicationController

    get '/login' do
        erb :'sessions/login'
    end

    # post '/sessions' do
    #     login(params[:email], params[:password])
    #     redirect '/????'
    # end
        #need to figure out where to redirect to and do login method

    get '/logout' do
        logout!
        redirect '/???'
    end
end
