class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper 

config.time_zone = 'Jakarta'

  def check_session
  	if !current_user
  		redirect_to login_path  	
  	end
  end
end
