class ApplicationController < ActionController::Base

  before_filter :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected 

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :birthday])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :birthday])
  end
end
