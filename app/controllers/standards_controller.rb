class StandardsController < ApplicationController

    get '/users/homepage' do
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

    post '/users/homepage' do
      if logged_in?
        if params[:standard_title] == "" && params[:standard_description] == ""
          redirect to '/standards/new'
        else
          @standard = current_user.standards.build(title: params[:standard_title], description: params[:standard_description], users: [current_user])
          if @standard.save
            redirect to "/users/homepage"
          else
            redirect to '/standards/new'
          end
        end
      end
    end

    get '/standards/:id/edit' do
      if logged_in?
        @standard = Standard.find_by_id(params[:id])
        if @standard && @standard.user == current_user
          erb :'standards/edit_standard'
          else
            redirect to '/users/hompage'
          end
        else
          redirect to '/homepage'
      end
    end

end
