class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email]).authenticate(params[:password])
  	
  end

  def destroy
  end
end
