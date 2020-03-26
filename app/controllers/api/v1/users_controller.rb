class Api::V1::UsersController < ApplicationController

  def index 
    @users = User.all 
    render json: @users 
  end

  def show 
  end

  def create 
    @user = User.new(user_params)
  end

  def edit 
  end

  def update 
  end

  private 

  def find_user 
    @user = User.find_by(id: params[:id])
  end 

  def user_params 
    params.require(:user).permit(:email, :password)
  end
       

end
