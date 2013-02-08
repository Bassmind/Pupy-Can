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

    it 'has a basic structure' do
      visit admin_path

      within '#panel' do
        page.should have_selector('#panel_title')
        page.should have_selector('#panel_list')
        page.should have_selector('#panel_products')
      end
    end

    it 'loads the categories of the database' do
      category_1 = create(:category)
      category_2 = create(:category)

      visit admin_path

      within '#panel_list' do
        page.should have_selector('label', count: 2)
        page.should have_content("#{category_1.name}")
        page.should have_content("#{category_2.name}")
      end
    end

    it 'loads the category name in the title bar when is clicked a category', :js => true do
      categoria = create(:category)

      visit admin_path

      #Sin hacer click en alguna categoria no debe haber titulo
      page.should have_selector('#panel_title', text: "")

      page.first('.category').click
      page.should have_selector('#panel_title', text: "#{categoria.name}")
    end
  end
end
