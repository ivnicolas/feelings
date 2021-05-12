class UserFeelingsController < ApplicationController
    def new
        # binding.pry

        if params[:user_id]
            find_user
            @user_feeling = @user.user_feelings.build
        else 
        redirect_to '/' 
        end 

    end 

    def create 

        if params[:user_id]
            find_user
            @user_feeling = @user.user_feelings.build(user_feelings_params) 
        else
            redirect_if_not_logged_in
        end 

        if @user_feeling.save 
            if @user 
             
                redirect_to user_user_feeling_path(@user, @user_feeling)
            else 
                redirect_if_not_logged_in
            end 
        else
            render :new
        end 

    end 

    def index 
        find_user
    end 

    def show 
        if params[:user_id] 
            find_user
            @user_feeling = UserFeeling.find_by_id(params[:id])
         
         end
    end 

  

    private 

    def find_user
        @user = User.find_by_id(params[:user_id])
    end

    def user_feelings_params 
        params.require(:user_feeling).permit( :id,:user_id, :feeling_id, :drink_water, :water_intake, 
        :time_of_last_meal, :what_did_you_eat, :moment_of_quiet, :length_of_quiet, :fresh_air, 
        :time_online, :social_interaction,:interaction_type ,
        :interaction_duration,:interaction_count, :body_movement, :body_movement_type, :conflict, 
        :resolved_conflict)
    end 
end
