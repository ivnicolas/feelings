class SessionsController < ApplicationController

  def welcome 
  end 

  def new
  end

  def login
  end

  def create
  end

  def destroy
    binding.pry
    session.clear
    redirect_to root_path
  end
end
