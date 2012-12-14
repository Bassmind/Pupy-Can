require 'spec_helper'

describe FrontController do
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

    it 'populates an array with the categories' do
    	category_1 = create(:category)
    	category_2 = create(:category)

    	get 'index'
    	assigns(:categories).should eql([category_1, category_2])
    end

    it 'charges the information of the profesor' do
    	admin = create(:user)

    	get 'index'
    	assigns(:user).should eql(admin)
    end

    it 'render the index view' do
    	get :index
    	response.should render_template :index
    end
  end
end
