class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from Cancan::AccessDenied do |exception|
  	redirect_to root_url, :alert => exeption.message
  end
end
