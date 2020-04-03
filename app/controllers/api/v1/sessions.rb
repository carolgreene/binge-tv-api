class Api::V1::SessionsController < ApplicationController

  def create 
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id 
      #redirect_to user_path(@user) ck to see if this is right
    else 
      flash.now[:notice] = "User name or password do not match our records"
      render :new
    end
  end  

  def destroy 
    session.delete :user_id 
    redirect_to root_path, alert: "Successfully logged out"
  end

end