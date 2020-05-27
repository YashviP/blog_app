class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller? 

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name,:middle_name,:last_name,:mobile_number,:email,:password,:password_confirmation,:gender,:birth_date,:profile_image])
		devise_parameter_sanitizer.permit(:account_update, keys:[:first_name,:middle_name,:last_name,:mobile_number,:email,:password,:password_confirmation,:gender,:birth_date,:profile_image])
  	end
	
end

