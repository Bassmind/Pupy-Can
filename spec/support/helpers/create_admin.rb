module HelpersDavid
	def log_as_admin
		user = create(:user)
    visit login_path
    fill_in(:name, with: "#{user.name}")
    fill_in(:password, with: "#{user.password}")
    click_button('Enviar')
	end
end