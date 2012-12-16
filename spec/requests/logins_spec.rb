require 'spec_helper'

describe "Logins" do
  describe "INDEX" do
    it 'shows a form with boxes' do
    	visit login_path

    	within '#login_form' do
    		page.should have_content("Usuario")
    		page.should have_selector('#name')
    		page.should have_content("Password")
    		page.should have_selector('#password')

    		find_button('Enviar').value.should eql("Enviar")
    	end
    end

    it 'redirects to admin page if login is succesful' do
    	user = create(:user, name: 'David', password: 'david_password')

    	visit login_path

    	fill_in(:name, with: "#{user.name}")
    	fill_in(:password, with: "#{user.password}")

    	click_button('Enviar')

    	current_path.should eql(admin_path)
    end

    it 'redirects to login page if login is unsuccesful' do
    	user = create(:user, name: 'David', password: 'david_password')

    	visit login_path

    	fill_in(:name, with: "#{user.name}")
    	fill_in(:password, with: "password_erroneo")

    	click_button('Enviar')

    	current_path.should eql(login_path)
    end
  end
end
