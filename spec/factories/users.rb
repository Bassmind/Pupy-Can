FactoryGirl.define do
	factory(:user) do
		name { Faker::Name.name }
		email { Faker::Internet.email }
		phone { Faker::PhoneNumber.phone_number }
		password { Faker::Name.name }
	end
end