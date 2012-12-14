require 'spec_helper'

describe "Fronts" do
  describe "Home Page Load" do
		it 'shows the principal home page for first time' do
			visit root_path

			#Cabecera	
			within '#header' do
				page.should have_selector('h1', text: "Profe-Page")
			end

			#Contenido
			within '#aside' do
				page.should have_selector('#menu')

				#No deberia haber ninguna categoria creada
				page.should_not have_selector('#category')
			end

			within '#article' do
				page.should have_selector('#container_articles')
			end

			#Info del contacto
			within '#footer' do
				page.should have_selector('#contact_info')
			end
		end

		context 'elements charge' do
			context 'categories' do
				it "without categories in the database don't create article classes" do
					visit root_path

					within '#article' do
						page.should have_selector('#container_articles')
						page.should_not have_selector('#article')
						page.should_not have_selector('#list_articles')
					end
				end

				it 'with categories, it shows them' do
					#Se crean dos categorias para mostrar en pagina principal
					create(:category)
					create(:category)

					visit root_path
					
					within '#aside' do
						page.should have_selector('.category', count: 2)
					end
				end
			end

			context 'admin information' do
				it 'should charge the information of the user if exists' do
					user = create(:user)

					visit root_path

					within '#footer' do
						within '#contact_info' do
							page.should have_content("#{user.name}")
							page.should have_content("#{user.email}")
							page.should have_content("#{user.phone}")
						end
					end
				end
			end
		end
  end
end