source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'pg'
gem 'cancan'
gem "haml-rails"
gem 'haml'

group :development do
	gem 'debugger'
end

group :development, :test do
	gem 'rspec-rails'
	gem 'factory_girl_rails'
	gem 'guard-rspec'
	gem 'spork'
	gem 'guard-spork'
end

group :test do
	gem 'faker'
	gem 'capybara'
	gem 'database_cleaner'
	gem 'launchy'

	#Guard dependencies
	gem 'rb-inotify'
	gem 'libnotify'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
	gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger