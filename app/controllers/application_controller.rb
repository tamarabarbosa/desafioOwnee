class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  protected


   def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :password, :password_confirmation, ) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
   end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
   rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
   end
end
