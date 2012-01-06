require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  def after_sign_in_path_for(resource)
	if current_user.has_role? :tenant
		stored_location_for(resource) || '/'
	else
		stored_location_for(resource) || '/user_panel'
	end
  end
  
end
