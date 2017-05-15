class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def current_broker
  	@current_broker ||= Broker.find(session[:broker_id]) if session[:broker_id]
  end
  helper_method :current_broker

  def authorize
    redirect_to '/login' unless current_user || current_broker
  end
end
