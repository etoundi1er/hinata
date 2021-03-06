class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #   Devise setup
  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  #   CanCanCan setup
#   check_authorization
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  #   Redirect after sign in
  def after_sign_in_path_for(resource)
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :gender, :email, :username, :date_of_birth, :address_line, :city, :phone, :password, :password_confirmation)
    end
    
    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit(:email, :username)
    end
  end
  
end
