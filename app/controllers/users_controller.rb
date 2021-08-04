class UsersController < ApplicationController
    # skip_before_action :redirect_if_not_logged_in, only: [:new, :create]

 
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

    def trends 
        redirect_if_not_logged_in
    end 

    #the users#show page but renamed homepage
    def homepage
        redirect_if_not_logged_in
        @user = User.find_by_id(session[:user_id])
        redirect_to '/' if  !@user
    end 

    def edit
        redirect_if_not_logged_in
        @user= User.find_by_id(params[:id])
    end 

    def update 
        binding.pry
        @user= User.find_by_id(params[:id])
        @user.update(user_params)

        if @user.update(user_params)
        
            redirect_to homepage_path
        else 
            render :edit 
        end 
    end 


   

    def destory 
    
    end 


    private 

    def user_params
        params.require(:user).permit(:name, :email, :password, :age, :zipcode, :mantra, :goal)
    end 

end
