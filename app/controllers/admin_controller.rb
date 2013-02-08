class AdminController < ApplicationController
	before_filter :authorize

  def index
  	@categories = Category.all
  end
end
