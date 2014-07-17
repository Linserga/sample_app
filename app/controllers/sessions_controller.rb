class SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			#Sign in user
			sign_in user
			redirect_to user
		else
			#Display error message and re-render signin form
			flash.now[:error] = 'Error'
			render 'new'
		end
		
	end

	def destroy
		sign_out 
		redirect_to root_url
	end	
end
