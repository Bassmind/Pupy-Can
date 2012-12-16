require 'spec_helper'

describe AdminController do
  describe "INDEX" do
    it "when user is a guest, redirects to home page" do
      get 'index'
      response.should redirect_to root_path
    end
  end
end
