class UsersController < ApplicationController
	#load_and_authorize_resource
	
	def show 
		@user = User.find(params[:id])
	end
	
	def myAccount
		
		@user = User.find(current_user.id)
		render 'show'
	end

end
