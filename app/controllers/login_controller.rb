require 'bcrypt'

class LoginController < ApplicationController
  def index
  end

  def check
  	session[:password] = BCrypt::Password.create(params[:password])
  	session[:name] = BCrypt::Password.create(params[:name])
    
  	if(authorize)
  		redirect_to admin_path
  	end
  end
end
