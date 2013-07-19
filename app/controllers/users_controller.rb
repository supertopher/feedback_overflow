class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Sucessfully created a new account"
      sign_in @user
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @user = current_user
  end
end
