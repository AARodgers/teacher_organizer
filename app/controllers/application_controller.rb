class ApplicationController < Sinatra::Base

    configure do
        # set :public_folder, 'public'
        set :views, 'app/views'
        # set :sessions_secret, "secret"
    end

    get '/' do
        "Hello World"
      end

end
