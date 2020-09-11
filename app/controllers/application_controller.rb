class ApplicationController < Sinatra::Base

    configure do
        # set :public_folder, 'public'
        set :views, 'app/views'
        # set :sessions_secret, "secret"
    end
            #?? what is public folder and does it need to be set to public and is session secret already done in config.ru


    helpers do

        def logged_in?
            !!current_user
        end


        def current_user
            @current_user ||= User.find_by(:email => session[:email]) if session[:email]
        end

        def login(email, password)
            user = User.find_by(:email => email)
            if user && user.authenticate(password)
                sessions[:email] = user.email
            else
                redirect '/login'
            end
        end

        def logout!
            session.clear
        end
end
