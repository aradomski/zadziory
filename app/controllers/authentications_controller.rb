class AuthenticationsController < ApplicationController
  def index
  @authentications = current_user.authentications if current_user
end

  def create
	omniauth = request.env["omniauth.auth"]
  authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
	
	if authentication
		flash[:notice] = t("devise.sessions.signed_in")
		sign_in_and_redirect(:user, authentication.user)
	elsif current_user
		current_user.authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'])
		flash[:notice] = t("devise.sessions.signed_in")
		redirect_to authentications_url
	else
		user = User.new
		user.roles << :tenant
		user.apply_omniauth(omniauth)

    if omniauth['provider'] == 'facebook'
      user.username = omniauth['user_info']['name']
      user.name = omniauth['user_info']['first_name']
      user.surname = omniauth['user_info']['last_name']
      # raise request.env["omniauth.auth"].to_yaml
    elsif omniauth['provider'] == 'twitter'
      #raise request.env["omniauth.auth"].to_yaml
		  user.username = omniauth['user_info']['nickname']
			user.email = 'change.email@please.com'
    end

    if user.save
			flash[:notice] = t("devise.sessions.signed_in")
			sign_in_and_redirect(:user, user)
    else
			session[:omniauth] = omniauth.except('extra')
      flash[:alert] = t("flash.alert.login.fail")
			redirect_to new_user_registration_url
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
