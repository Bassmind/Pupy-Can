class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def authorize
  	if(User.count > 0)
  		if ((session[:name] == User.first.name) && (session[:password] == User.first.password))
	  		return true
	  	end
  	end

  	reset_session
    flash[:notice] = "Informacion incorrecta"
	  redirect_to login_path
	  false
  end
end
