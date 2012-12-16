class LoginController < ApplicationController
  def index
  end

  def check
  	session[:password] = params[:password]
  	session[:name] = params[:name]
  	
  	if(authorize)
  		redirect_to admin_path
  	end
  end
end
