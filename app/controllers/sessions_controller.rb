class SessionsController < ApplicationController

    def new
        @user = User.find_by(username: params[:username])
    end

    def create
        @user = User.find_by(username: params[:username])
    
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to home_path
        else
            
            redirect_to login_path, alert: "Username or Password incorrect or not found."
        end
    end


end
