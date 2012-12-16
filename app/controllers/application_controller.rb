class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def authorize
  	if(User.count > 0)
  		if ((session[:user] == User.first.name) && (session[:password] == User.first.password))
	  		return true
	  	end
  	end

  	reset_session
	  redirect_to login_path
	  false
  end
end
