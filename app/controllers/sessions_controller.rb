class SessionsController < ApplicationController
  def create
    if @user = User.find_by_email(params[:email])
      
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to '/'
      
      else
        redirect_to login_path
      end

    else @broker = Broker.find_by_email(params[:email])
      
      if @broker && @broker.authenticate(params[:password])
        session[:broker_id] = @broker.id
        redirect_to '/'

      else
        redirect_to login_path
      end      
    end
  end

  def destroy 
    if current_user.present?
      session[:user_id] = nil
    elsif current_broker.present?
      session[:broker_id] = nil
    end
    redirect_to login_path
  end
end
