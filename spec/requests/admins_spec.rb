require 'spec_helper'

describe "Admins" do
	include HelpersDavid
  describe "INDEX" do
    before{
    	log_as_admin
    }

    it 'has session expiration' do
    	visit admin_path
    	new_time = (Time.now + 31.minutes)
    	Time.stub!(:now).and_return(new_time)

    	visit admin_path
    	current_path.should eql(login_path)
    end
  end
end
