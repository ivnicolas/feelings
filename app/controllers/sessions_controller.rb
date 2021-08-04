class SessionsController < ApplicationController

  #is the same as sessions#new but on the welcompage
  def welcome 
    if logged_in?
      redirect_to homepage_path
    end 
  end 

  def omniauth #login user with omniauth
    #note to self for review: if google chrome already has you logged in, it will automatically use
    #that information rather than have you pick a profile to sign in with
    user = User.build_from_omniauth(auth)
    if user.valid?
      session[:user_id] = user[:id]
      redirect_to homepage_path
    else 
      redirect_to root_path
    end
  end 

  def create
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


  private 

  def auth 
    request.env['omniauth.auth']
  end 
end
