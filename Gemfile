source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'jquery-rails'
  gem 'less-rails'
  gem 'twitter-bootstrap-rails'
  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
end

gem 'devise'
gem 'devise_invitable'
gem 'figaro'
gem 'pg'
gem 'simple_form'
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-google-oauth2'

group :development do
  gem 'better_errors'
  gem 'awesome_print'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_layout'
end

group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'cucumber-rails', :require=>false
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'launchy'
end

