class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username])
    devise_parameter_sanitizer.permit(:edit, keys: [:name, :username, :current_password])
  end
end
