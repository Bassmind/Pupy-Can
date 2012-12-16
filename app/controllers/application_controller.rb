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
  	flash[:notice] = "Password invalido"
	  redirect_to root_path
	  false
  end
end
