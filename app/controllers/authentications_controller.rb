class AuthenticationsController < ApplicationController
  def index
  @authentications = current_user.authentications if current_user
end

  def create
	omniauth = request.env["omniauth.auth"]
    authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
	
	if authentication
		flash[:notice] = "Logowanie udane!"
		sign_in_and_redirect(:user, authentication.user)
	elsif current_user
		current_user.authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'])
		flash[:notice] = "Logowanie udane!"
		redirect_to authentications_url
	else
		user = User.new
		user.roles << :tenant
		user.apply_omniauth(omniauth)
		if user.save
			flash[:notice] = "Logowanie udane!"
			sign_in_and_redirect(:user, user)
		else
			session[:omniauth] = omniauth.except('extra')
			if omniauth['provider'] == 'twitter'
				user.email = 'change.email@please.com'
				flash[:notice] = "Logowanie udane!"
				sign_in_and_redirect(:user, user)
			else
				flash[:notice] = "Mamy problem!"
				redirect_to new_user_registration_url
			end
		end
	end
  end

  def destroy
	@authentication = current_user.authentications.find(params[:id])
	@authentication.destroy
	flash[:notice] = "Successfully destroyed authentication."
	redirect_to authentications_url
  end
end
