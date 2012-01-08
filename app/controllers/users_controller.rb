class UsersController < ApplicationController
	#load_and_authorize_resource
	
	def myAccount
		
		@user = User.find(current_user.id)
		render 'show'
	end

end
