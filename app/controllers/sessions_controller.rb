class SessionsController < ApplicationController

    def index

    end


  def logout 
    session.delete(:user_id)

    redirect_to homepage_path
  end 

  def new 
  end 

  def create 
    # byebug
    user = User.find_by(username: params[:session][:username])
     
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to homepage_path
    else
      flash[:error] = "Username or Password was incorrect"
      redirect_to new_login_path
    end 
  end

end