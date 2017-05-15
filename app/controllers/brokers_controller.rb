class BrokersController < ApplicationController
	def new
	end
	def create
		@broker = Broker.new(broker_params)
		if @broker.save
			redirect_to login_path, :notice => "Your account has been created, you can login now :)"
		else 
			render 'signup/broker'
		end
	end

	private
	def broker_params
		params.require(:broker).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end
end
