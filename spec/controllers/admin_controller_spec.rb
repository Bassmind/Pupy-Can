require 'spec_helper'

describe AdminController do
  describe "INDEX" do
    it "when user is a guest, redirects to login page" do
      get 'index'
      response.should redirect_to login_path
    end

    context 'admin' do
    	xit 'requires login' do
    		get 'index'
    	end
    end
  end
end
