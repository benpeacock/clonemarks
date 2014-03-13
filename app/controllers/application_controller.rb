class ApplicationController < ActionController::Base
  protect_from_forgery

  # rescue_from Cancan::AccessDenied do |exception|
  # 	redirect_to root_url, :alert => exeption.message
  # end

  def after_sign_in_path_for(resource)
  	welcome_index_path
  end
end
