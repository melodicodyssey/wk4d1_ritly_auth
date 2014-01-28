class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  end

  def create
  	@user = User.new(params.require(:user).permit(:username, :email, :password, :password_confirmation))
  	if @user.save
  		flash[:success] = "You made one, son"
  		redirect_to index_path
  	else
  		flash[:invalid] = "Incorrect information"
  		redirect_to new_users_path
  	end
  end

  def user_params
  	params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end


  #put private methods here, like logged_in
end