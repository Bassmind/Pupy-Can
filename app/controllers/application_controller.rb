class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def authorize
  	if(User.count > 0)
  		if ((session[:name] == User.first.name) && (session[:password] == User.first.password))
	  		if(session[:last_seen].nil?)
          session[:last_seen] = Time.now
          return true
        else
          if(session[:last_seen] > (Time.now - 30.minutes))
            session[:last_seen] = Time.now
            return true
          else
            flash[:notice] = "Sesion expirada"
            flag_session_expired = true
          end
        end
	  	end
  	end

  	reset_session
    flash[:notice] = "Informacion incorrecta" unless (defined? flag_session_expired)
	  redirect_to login_path
	  false
  end
end
