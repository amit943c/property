class UsersController < ApplicationController
  def new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, :notice => "Your account has been created, you can login now :)"
    else 
      render 'signup/user'
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
