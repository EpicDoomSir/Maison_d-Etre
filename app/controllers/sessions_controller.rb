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
    user = User.find_by(user_name: params[:session][:username])
     
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
    #   redirect_to [we can decide where this should redirect]
    else
      flash[:error] = "Username or Password was incorrect"
      redirect_to new_login_path
    end 
  end

end