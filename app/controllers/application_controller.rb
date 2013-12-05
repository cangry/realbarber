class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me,:avatar, :is_barber) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email, :password, :remember_me,:avatar) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:id, :username, :email, :avatar, :password, :password_confirmation, :current_password, barber_attributes: [:id, :user_id,:bio,:address1,:address2,:zip,:city,:state,:country,:status]) }
  end
end
