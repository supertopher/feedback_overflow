class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    p params[:user]
    if @user.save
      flash[:success] = "Sucessfully created a new account"
      redirect_to root_url
    else
      render 'new'
    end
  end
end
