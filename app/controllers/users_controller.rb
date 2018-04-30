class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # debugger # this uses the 'byebug' gem 
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to the sample app!'
      redirect_to home_path 
    else
      flash[:error] = "invalid submission"
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end