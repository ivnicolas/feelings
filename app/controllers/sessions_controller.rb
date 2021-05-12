class SessionsController < ApplicationController

  #is the same as sessions#new but on the welcompage
  def welcome 
  end 

  def create
    # binding.pry
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user[:id]
      redirect_to homepage_path
    else 
      flash[:message]= "Your password or email was incorrect. Please try again"
      redirect_to root_path
    end 
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
