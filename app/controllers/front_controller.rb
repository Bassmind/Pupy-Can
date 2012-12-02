class FrontController < ApplicationController
  def index
  	@categories = Category.all
  	@user = User.first
  end
end
