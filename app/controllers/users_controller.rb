class UsersController < ApplicationController

    def new 
        @user = User.new
    end 

    def create 
        @user = User.new(user_params)
        if @user.save 
            session[:user_id]= @user.id 
            redirect_to homepage_path
        else
            render :new
        end 
    end 

    def homepage
        @user = User.find_by_id(session[:user_id])
        redirect_to '/' if  !@user
    end 

    def show 
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end 
end
