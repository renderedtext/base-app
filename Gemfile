source "http://rubygems.org"

gem "rails"
gem "sass-rails"
gem "coffee-rails"
gem 'uglifier'

gem 'heroku'

gem "pg", :require => "pg"

gem 'json'

gem "devise"
gem "omniauth-facebook"

gem "kaminari"
gem "carrierwave"
gem "jquery-rails"
gem "meta_search"
gem "dynamic_form"

group :test, :development do
  gem "rspec-rails"
  gem "spork", "~> 1.0.0rc1"
  gem "awesome_print"
end

group :development do
  gem "thin"
  gem "chronic"
  gem "admin_view"
  gem "ruby-debug19"
end

group :test do
  gem "factory_girl_rails"
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "selenium-webdriver", "~> 2.18.0"
  gem "capybara"
  gem "shoulda"
  gem "email_spec"
end

group :production do
  gem "thin"
end
