class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true, with: :exception
  skip_before_filter :verify_authenticity_token, only: [:create]
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up,keys: [:first_name,:last_name,:birthday_month,:birthday_day,:birthday_year])
  end
end
