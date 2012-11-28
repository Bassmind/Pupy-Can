describe 'Home Page Load' do
	it 'shows the home page' do
		visit root_path

		page.should have_content "Profe-Page"
	end
end