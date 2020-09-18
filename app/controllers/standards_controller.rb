class StandardsController < ApplicationController

    get '/homepage' do
      @user = current_user
      @standards = @user.standards
      erb :'users/homepage'
    end

    get '/standards/new' do
      if logged_in?
          erb :'standards/create_standard'
      else
          redirect to '/homepage'
      end
    end

    post '/homepage' do
      if logged_in?
        if params[:standard_title] == "" && params[:standard_description] == ""
          # need to remove resource from form? and add above?
          redirect to '/standards/new'
        else
          @standard = current_user.standards.build(title: params[:standard_title], description: params[:standard_description])
          if @standard.save
            redirect to "/standards/#{@standard.id}"
          else
            redirect to '/standards/new'
          end
        end
      else
        redirect to '/homepage'
      end
    end

end
