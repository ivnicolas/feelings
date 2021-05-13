class ApplicationController < ActionController::Base

    #this gives access to helper methods in the views
    helper_method :current_user , :logged_in?, :bool_to_text

    private 

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end 

    def logged_in?
        !!session[:user_id]
    end 

    def redirect_if_not_logged_in
        redirect_to root_path if !logged_in?
    end 

    def redirect_if_not_current_user 
       
    end 

    def bool_to_text(value)
        if value == true 
            "Yes"
        else 
            "No"
        end 
    end 
end
