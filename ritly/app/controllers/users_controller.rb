class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params.require(:user).permit(:username, :email, :password, :password_confirmation))
  	if @user.save
  		flash[:success] = "You made one, son"
  		redirect_to index_path
  	else
  		flash[:invalid] = "Incorrect information"
  		render new
  	end
  end

end