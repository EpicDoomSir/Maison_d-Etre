class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(params.require(:user).permit(:username, :password))
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:user_error] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

end
