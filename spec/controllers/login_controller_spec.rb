require 'spec_helper'

describe LoginController do
  describe "INDEX" do
    it "is accessible for the guest user" do
      get 'index'
      response.should be_success
    end

    it 'is accessible for the admin' do
      create(:user)

    	get 'index'
      response.should be_success
    end
  end

  describe "CHECK" do
    it 'redirects to admin if login was successful' do
      user = create(:user, name: 'David', password: 'david_password')

      post 'check', name: user.name, password: user.password

      response.should redirect_to admin_path
    end

    it 'redirects to login if login was unsuccesful' do
      user = create(:user, name: 'David', password: 'david_password')

      post 'check', name: user.name, password: 'hola'

      response.should redirect_to login_path
    end
  end
end
