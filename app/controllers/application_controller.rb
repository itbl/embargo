class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :require_login
  
  rescue_from Embargo::RequirementsError do |exception|
    redirect_to root_url, :alert => exception.message
  end
end
