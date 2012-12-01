require 'spec_helper.rb'

describe "Home Page Load" do
	it 'shows the principal home page' do
		visit root_path

		page.should have_content "Profe-Page"
		save_and_open_page
	end
end